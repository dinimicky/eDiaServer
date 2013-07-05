%% @author ezonghu
%% @doc @todo Add description to dia_server.


-module(dia_server).
-vsn(dia_server_0_4).

-include_lib("diameter/include/diameter.hrl").
-include("diameter_ericsson_accounting.hrl").
-include("dia_server.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([start/1,
		 start/2,
		 start/5,
		 stop/0,
		 resume/1,
		 resume/3,
		 pause/0]).

start(Transport) ->
	start(Transport, ?DEFAULT_ADDR).
start(Transport, Addr) ->
	start(Transport, Addr, ?DEFAULT_PORT, "server2.example2.com", "example2.com").
start(Transport, Addr, Port, OH, OR) ->
	diameter:start(),
    ok = diameter:start_service(?SVC_NAME, ?SERVICE(OH,OR)),
    sessionDB:create_session_tab(),
	common_stats:init(?DIA_STATS_TAB, ?DIA_STATS_COUNTERS),
    {ok, _} = diameter:add_transport(?SVC_NAME, {listen, server({Transport, Addr, Port})}).

%% stop/0

stop() ->
	common_stats:terminate(?DIA_STATS_TAB),
    sessionDB:stop_session_tab(), 
    ok = diameter:stop_service(?SVC_NAME),
    diameter:stop().

%% resume/1
resume(T) ->
	resume(T,"server2.example2.com", "example2.com").
resume(T, OH, OR) ->
    diameter:start(),
    ok = diameter:start_service(?SVC_NAME, ?SERVICE(OH, OR)),
    {ok, _} = diameter:add_transport(?SVC_NAME, {listen, server(T)}).

%% pause/0

pause() ->   
    ok = diameter:stop_service(?SVC_NAME),
    diameter:stop().

%% ---------------------------------------------------------------------------

server({T, Addr, Port}) ->
    [{transport_module, tmod(T)},
     {transport_config, [{reuseaddr, true},
                         {ip, Addr},
                         {port, Port}]}];

server(T) ->
    server({T, ?DEFAULT_ADDR, ?DEFAULT_PORT}).

tmod(tcp)  -> diameter_tcp;
tmod(sctp) -> diameter_sctp.



%% ====================================================================
%% Internal functions
%% ====================================================================


