%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2010-2011. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%
%%

%%
%% The diameter application callback module configured by server.erl.
%%

-module(dia_server_cb).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter_ericsson_accounting.hrl").
-include("dia_server.hrl").

%% diameter callbacks
-export([peer_up/3,
         peer_down/3,
         pick_peer/4,
         prepare_request/3,
         prepare_retransmit/3,
         handle_answer/4,
         handle_error/4,
         handle_request/3]).




peer_up(_SvcName, {PeerRef, _}, State) ->
    io:format("up: ~p~ntime:[~p]~n", [PeerRef, calendar:local_time()]),
    State.

peer_down(_SvcName, {PeerRef, _}, State) ->
    io:format("down: ~p~ntime:[~p]~n", [PeerRef, calendar:local_time()]),
    State.

pick_peer(_, _, _SvcName, _State) ->
    ?UNEXPECTED.

prepare_request(_, _SvcName, _Peer) ->
    ?UNEXPECTED.

prepare_retransmit(_Packet, _SvcName, _Peer) ->
    ?UNEXPECTED.

handle_answer(_Packet, _Request, _SvcName, _Peer) ->
    ?UNEXPECTED.

handle_error(_Reason, _Request, _SvcName, _Peer) ->
    ?UNEXPECTED.

%% A request whose decode was successful ...
handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps})
  when is_record(Req, diameter_ericsson_accounting_ACR) ->
    #diameter_caps{origin_host = {OH,_},
                   origin_realm = {OR,_}}
        = Caps,
    #diameter_ericsson_accounting_ACR{'Session-Id' = Id,
                                  'Accounting-Record-Type' = RT,
                                  'Accounting-Record-Number' = RN,
                                  'Acct-Application-Id' = AI}
        = Req,
    Res = sessionDB:get_resp(Id, RT, RN),
	answer(Res, OH, OR, Id, RT, RN, AI);

%% ... or one that wasn't. 3xxx errors are answered by diameter itself
%% but these are 5xxx errors for which we must contruct a reply.
%% diameter will set Result-Code and Failed-AVP's.
handle_request(#diameter_packet{msg = Req} = _Pkt, _SvcName, {_, Caps})
  when is_record(Req, diameter_ericsson_accounting_ACR) ->
    #diameter_caps{origin_host = {OH,_},
                   origin_realm = {OR,_}}
        = Caps,
    #diameter_ericsson_accounting_ACR{'Session-Id' = Id,
                                      'Accounting-Record-Type' = RT,
                                      'Accounting-Record-Number' = RN,
                                      'Acct-Application-Id' = AI}
        = Req,

    Ans = #diameter_ericsson_accounting_ACA{'Session-Id' = Id,
                                            'Accounting-Record-Type' = RT,
                                            'Accounting-Record-Number' = RN,
                                            'Acct-Application-Id' = AI,
                                            'Origin-Host' = OH,
                                            'Origin-Realm' = OR},

    {reply, Ans};

%% Should really reply to other base messages that we don't support
%% but simply discard them instead.
handle_request(#diameter_packet{}, _SvcName, {_,_}) ->
    discard.

%% ---------------------------------------------------------------------------

%% Answer using the record or list encoding depending on
%% Re-Auth-Request-Type. This is just as an example. You would
%% typically just choose one, and this has nothing to do with the how
%% client.erl sends.

%% ---------------------------------------------------------------------------
answer(event, OH, OR, Id, RT, RN, AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Event),
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 2001,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};
answer(start, OH, OR, Id, RT, RN, AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Start),
	common_stats:inc(?DIA_STATS_TAB, ongoing_session),
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 2001,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};

answer(duplicate_start, OH, OR, Id, RT, RN, AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Start),
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 2001,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};

answer(unknow_sid, OH, OR, Id, RT, RN, AI) ->
	case RT of
		3 -> common_stats:inc(?DIA_STATS_TAB, acr_Interim);
		4 -> common_stats:inc(?DIA_STATS_TAB, acr_Stop)
	end,
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 5002,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};

answer(interim, OH, OR, Id, RT, RN, AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Interim),
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 2001,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};

answer(expired_interim, _OH, _OR, _Id, _RT, _RN, _AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Interim),
    discard;

answer(stop, OH, OR, Id, RT, RN, AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Stop),
	common_stats:dec(?DIA_STATS_TAB, ongoing_session),
	common_stats:inc(?DIA_STATS_TAB, finished_session),
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 2001,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}};

answer(invalid_stop, _OH, _OR, _Id, _RT, _RN, _AI) ->
	common_stats:inc(?DIA_STATS_TAB, acr_Stop),
    discard;

answer(_, OH, OR, Id, RT, RN, AI) ->
    case RT of
         1 -> common_stats:inc(?DIA_STATS_TAB, acr_Event);
         2 -> common_stats:inc(?DIA_STATS_TAB, acr_Start);
         3 -> common_stats:inc(?DIA_STATS_TAB, acr_Interim);  
         4 -> common_stats:inc(?DIA_STATS_TAB, acr_Stop)
    end,   
    {reply, #diameter_ericsson_accounting_ACA{'Result-Code' = 5012,
	                                  'Origin-Host' = OH,
	                                  'Origin-Realm' = OR,
	                                  'Session-Id' = Id,
	                                  'Accounting-Record-Type' = RT,
	                                  'Accounting-Record-Number' = RN,
	                                  'Acct-Application-Id' = AI}}.
