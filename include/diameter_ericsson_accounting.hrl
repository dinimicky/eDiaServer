%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

%%
%% Copyright (c) Ericsson AB. All rights reserved.
%%
%% The information in this document is the property of Ericsson.
%%
%% Except as specifically authorized in writing by Ericsson, the
%% receiver of this document shall keep the information contained
%% herein confidential and shall protect the same in whole or in
%% part from disclosure and dissemination to third parties.
%%
%% Disclosure and disseminations to the receivers employees shall
%% only be made on a strict need to know basis.
%%

-hrl_name('diameter_ericsson_accounting.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

-record(diameter_ericsson_accounting_ACR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Accounting-Record-Type',
	 'Accounting-Record-Number', 'Destination-Host' = [],
	 'Acct-Application-Id' = [], 'Event-Timestamp' = [],
	 'Service-Context-Id' = [], 'Service-Information' = [],
	 'Ericsson-Service-Information' = []}).

-record(diameter_ericsson_accounting_ACA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'Accounting-Record-Type',
	 'Accounting-Record-Number', 'Acct-Application-Id' = [],
	 'Experimental-Result' = [],
	 'Acct-Interim-Interval' = [], 'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record('diameter_ericsson_accounting_Ericsson-Service-Information',
	{'IMS-Service-Identification' = [],
	 'Dial-Around-Indicator' = [], 'SIP-Reason' = [],
	 'From-Header' = [], 'Media-Statistics' = [],
	 'Redirecting-Party-Address' = [],
	 'Network-Call-Reference' = [],
	 'Additional-Charging-Information' = [],
	 'Transaction-Info' = []}).

-record('diameter_ericsson_accounting_Event-Type',
	{'SIP-Method' = [], 'Event' = [], 'Expires' = []}).

-record('diameter_ericsson_accounting_IMS-Information',
	{'Node-Functionality', 'Event-Type' = [],
	 'Role-of-Node' = [], 'User-Session-ID' = [],
	 'Calling-Party-Address' = [],
	 'Called-Party-Address' = [],
	 'Called-Asserted-Identity' = [],
	 'Number-Portability-Routing-Information' = [],
	 'Carrier-Select-Routing-Information' = [],
	 'Requested-Party-Address' = [], 'Time-Stamps' = [],
	 'Inter-Operator-Identifier' = [],
	 'IMS-Charging-Identifier' = [],
	 'SDP-Session-Description' = [],
	 'SDP-Media-Component' = [], 'Trunk-Group-ID' = [],
	 'Cause-Code' = []}).

-record('diameter_ericsson_accounting_Inter-Operator-Identifier',
	{'Originating-IOI' = [], 'Terminating-IOI' = []}).

-record('diameter_ericsson_accounting_Media-Interface-Flow-Statistics',
	{'Media-Component-Number',
	 'Accounting-Input-Octets' = [],
	 'Accounting-Input-Packets' = [],
	 'Accounting-Output-Octets' = [],
	 'Accounting-Output-Packets' = [],
	 'Total-Session-Duration' = [], 'Packet-Loss-Rate' = [],
	 'JB-Discard-Rate' = [], 'Round-Trip-Delay' = []}).

-record('diameter_ericsson_accounting_Media-Interface-Statistics',
	{'User-Side', 'Media-Interface-Flow-Statistics' = []}).

-record('diameter_ericsson_accounting_Media-Statistics',
	{'Media-Interface-Statistics' = []}).

-record('diameter_ericsson_accounting_SDP-Media-Component',
	{'SDP-Media-Name' = [], 'SDP-Media-Description' = [],
	 'Media-Initiator-Flag' = []}).

-record('diameter_ericsson_accounting_Service-Information',
	{'IMS-Information' = []}).

-record('diameter_ericsson_accounting_SIP-Reason',
	{'SIP-Reason-Cause' = [], 'SIP-Reason-Text' = []}).

-record('diameter_ericsson_accounting_Time-Stamps',
	{'SIP-Request-Timestamp' = [],
	 'SIP-Response-Timestamp' = [],
	 'SIP-Request-Timestamp-Fraction' = [],
	 'SIP-Response-Timestamp-Fraction' = []}).

-record('diameter_ericsson_accounting_Transaction-Info',
	{'Transaction-Type', 'Transaction-Data-Name',
	 'Transaction-Data-Value'}).

-record('diameter_ericsson_accounting_Trunk-Group-ID',
	{'Incoming-Trunk-Group-ID' = [],
	 'Outgoing-Trunk-Group-ID' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-record('diameter_ericsson_accounting_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('diameter_ericsson_accounting_Failed-AVP',
	{'AVP' = []}).

-record('diameter_ericsson_accounting_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('diameter_ericsson_accounting_Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('diameter_ericsson_accounting_E2E-Sequence',
	{'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('DIAMETER_ERICSSON_ACCOUNTING_MEDIA-INITIATOR-FLAG_CALLED_PARTY', 0).
-define('DIAMETER_ERICSSON_ACCOUNTING_MEDIA-INITIATOR-FLAG_CALLING_PARTY', 1).
-define('DIAMETER_ERICSSON_ACCOUNTING_MEDIA-INITIATOR-FLAG_UNKNOWN', 2).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_S-CSCF', 0).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_P-CSCF', 1).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_I-CSCF', 2).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_MRFC', 3).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_MGCF', 4).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_BGCF', 5).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_AS', 6).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_E-CSCF', 7).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_EXIT_IBCF', 8).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_ENTRY_IBCF', 9).
-define('DIAMETER_ERICSSON_ACCOUNTING_NODE-FUNCTIONALITY_A-ALG', 110).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_ORIGINATING_ROLE', 0).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_TERMINATING_ROLE', 1).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_PROXY_ROLE', 2).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_B2BUA_ROLE', 3).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_ENTRY_IBCF_ROLE', 4).
-define('DIAMETER_ERICSSON_ACCOUNTING_ROLE-OF-NODE_EXIT_IBCF_ROLE', 5).
-define('DIAMETER_ERICSSON_ACCOUNTING_TRANSACTION-TYPE_SIP_REQUEST', 0).
-define('DIAMETER_ERICSSON_ACCOUNTING_TRANSACTION-TYPE_SIP_RESPONSE', 1).
-define('DIAMETER_ERICSSON_ACCOUNTING_USER-SIDE_CALLING_SIDE', 0).
-define('DIAMETER_ERICSSON_ACCOUNTING_USER-SIDE_CALLED_SIDE', 1).



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-ifndef('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_REBOOTING').
-define('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_BUSY').
-define('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DIAMETER_ERICSSON_ACCOUNTING_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_DONT_CACHE').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_SESSION').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_REALM').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_HOST').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_USER').
-define('DIAMETER_ERICSSON_ACCOUNTING_REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_ERICSSON_ACCOUNTING_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('DIAMETER_ERICSSON_ACCOUNTING_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('DIAMETER_ERICSSON_ACCOUNTING_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('DIAMETER_ERICSSON_ACCOUNTING_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('DIAMETER_ERICSSON_ACCOUNTING_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_LOGOUT').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_BAD_ANSWER').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_ADMINISTRATIVE').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_LINK_BROKEN').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_AUTH_EXPIRED').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_USER_MOVED').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('DIAMETER_ERICSSON_ACCOUNTING_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('DIAMETER_ERICSSON_ACCOUNTING_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('DIAMETER_ERICSSON_ACCOUNTING_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.

