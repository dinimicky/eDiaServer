-define(CALLBACK_MOD, dia_server_cb).
-define(SVC_NAME,     dia_server).
-define(APP_ALIAS,    dia_server).
-define(DIA_STATS_TAB, dia_stats_tab).
-define(DIA_STATS_COUNTERS, [acr_Start, acr_Stop, acr_Interim, acr_Event, ongoing_session, finished_session]).
-define(SESSION_TAB, session_tab).

-define(SERVICE, [{'Origin-Host', "server2.example2.com"},
                  {'Origin-Realm', "example2.com"},
                  {'Vendor-Id', 193},
                  {'Product-Name', "TheServer"},
                  {'Acct-Application-Id', [3]},
                  {application, [{alias, ?APP_ALIAS},
                                 {dictionary, diameter_ericsson_accounting},
                                 {module, ?CALLBACK_MOD}]}]).


-define(UNEXPECTED, erlang:error({unexpected, ?MODULE, ?LINE})).

-define(DEFAULT_ADDR, {127,0,0,1}).
-define(DEFAULT_PORT, 3868).
