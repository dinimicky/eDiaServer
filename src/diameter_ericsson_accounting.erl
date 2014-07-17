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

-module(diameter_ericsson_accounting).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records([diameter_ericsson_accounting_ACR,
		 diameter_ericsson_accounting_ACA,
		 'diameter_ericsson_accounting_Ericsson-Service-Information',
		 'diameter_ericsson_accounting_Event-Type',
		 'diameter_ericsson_accounting_IMS-Information',
		 'diameter_ericsson_accounting_Inter-Operator-Identifier',
		 'diameter_ericsson_accounting_Media-Interface-Flow-Statistics',
		 'diameter_ericsson_accounting_Media-Interface-Statistics',
		 'diameter_ericsson_accounting_Media-Statistics',
		 'diameter_ericsson_accounting_SDP-Media-Component',
		 'diameter_ericsson_accounting_Service-Information',
		 'diameter_ericsson_accounting_SIP-Reason',
		 'diameter_ericsson_accounting_Time-Stamps',
		 'diameter_ericsson_accounting_Transaction-Info',
		 'diameter_ericsson_accounting_Trunk-Group-ID',
		 'diameter_ericsson_accounting_Proxy-Info',
		 'diameter_ericsson_accounting_Failed-AVP',
		 'diameter_ericsson_accounting_Experimental-Result',
		 'diameter_ericsson_accounting_Vendor-Specific-Application-Id',
		 'diameter_ericsson_accounting_E2E-Sequence']).

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
	 'Transaction-Data-Value' = []}).

-record('diameter_ericsson_accounting_Trunk-Group-ID',
	{'Incoming-Trunk-Group-ID' = [],
	 'Outgoing-Trunk-Group-ID' = []}).

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

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> diameter_ericsson_accounting.

id() -> 3.

vendor_id() -> 193.

vendor_name() -> 'Ericsson'.

msg_name(271, true) -> 'ACR';
msg_name(271, false) -> 'ACA';
msg_name(_, _) -> ''.

msg_header('ACR') -> {271, 192, 3};
msg_header('ACA') -> {271, 64, 3};
msg_header(_) -> erlang:error(badarg).

rec2msg(diameter_ericsson_accounting_ACR) -> 'ACR';
rec2msg(diameter_ericsson_accounting_ACA) -> 'ACA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('ACR') -> diameter_ericsson_accounting_ACR;
msg2rec('ACA') -> diameter_ericsson_accounting_ACA;
msg2rec(_) -> erlang:error(badarg).

name2rec('Ericsson-Service-Information') ->
    'diameter_ericsson_accounting_Ericsson-Service-Information';
name2rec('Event-Type') ->
    'diameter_ericsson_accounting_Event-Type';
name2rec('IMS-Information') ->
    'diameter_ericsson_accounting_IMS-Information';
name2rec('Inter-Operator-Identifier') ->
    'diameter_ericsson_accounting_Inter-Operator-Identifier';
name2rec('Media-Interface-Flow-Statistics') ->
    'diameter_ericsson_accounting_Media-Interface-Flow-Statistics';
name2rec('Media-Interface-Statistics') ->
    'diameter_ericsson_accounting_Media-Interface-Statistics';
name2rec('Media-Statistics') ->
    'diameter_ericsson_accounting_Media-Statistics';
name2rec('SDP-Media-Component') ->
    'diameter_ericsson_accounting_SDP-Media-Component';
name2rec('Service-Information') ->
    'diameter_ericsson_accounting_Service-Information';
name2rec('SIP-Reason') ->
    'diameter_ericsson_accounting_SIP-Reason';
name2rec('Time-Stamps') ->
    'diameter_ericsson_accounting_Time-Stamps';
name2rec('Transaction-Info') ->
    'diameter_ericsson_accounting_Transaction-Info';
name2rec('Trunk-Group-ID') ->
    'diameter_ericsson_accounting_Trunk-Group-ID';
name2rec('Proxy-Info') ->
    'diameter_ericsson_accounting_Proxy-Info';
name2rec('Failed-AVP') ->
    'diameter_ericsson_accounting_Failed-AVP';
name2rec('Experimental-Result') ->
    'diameter_ericsson_accounting_Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'diameter_ericsson_accounting_Vendor-Specific-Application-Id';
name2rec('E2E-Sequence') ->
    'diameter_ericsson_accounting_E2E-Sequence';
name2rec(T) -> msg2rec(T).

avp_name(363, undefined) ->
    {'Accounting-Input-Octets', 'Unsigned64'};
avp_name(365, undefined) ->
    {'Accounting-Input-Packets', 'Unsigned64'};
avp_name(364, undefined) ->
    {'Accounting-Output-Octets', 'Unsigned64'};
avp_name(366, undefined) ->
    {'Accounting-Output-Packets', 'Unsigned64'};
avp_name(1298, 193) ->
    {'Additional-Charging-Information', 'UTF8String'};
avp_name(1250, 10415) ->
    {'Called-Asserted-Identity', 'UTF8String'};
avp_name(832, 10415) ->
    {'Called-Party-Address', 'UTF8String'};
avp_name(831, 10415) ->
    {'Calling-Party-Address', 'UTF8String'};
avp_name(2023, 10415) ->
    {'Carrier-Select-Routing-Information', 'UTF8String'};
avp_name(861, 10415) -> {'Cause-Code', 'Integer32'};
avp_name(1160, 193) ->
    {'Dial-Around-Indicator', 'UTF8String'};
avp_name(285, 193) ->
    {'Ericsson-Service-Information', 'Grouped'};
avp_name(825, 10415) -> {'Event', 'UTF8String'};
avp_name(823, 10415) -> {'Event-Type', 'Grouped'};
avp_name(888, 10415) -> {'Expires', 'Unsigned32'};
avp_name(1153, 193) -> {'From-Header', 'UTF8String'};
avp_name(841, 10415) ->
    {'IMS-Charging-Identifier', 'UTF8String'};
avp_name(876, 10415) -> {'IMS-Information', 'Grouped'};
avp_name(284, 193) ->
    {'IMS-Service-Identification', 'UTF8String'};
avp_name(852, 10415) ->
    {'Incoming-Trunk-Group-ID', 'UTF8String'};
avp_name(838, 10415) ->
    {'Inter-Operator-Identifier', 'Grouped'};
avp_name(1301, 193) ->
    {'JB-Discard-Rate', 'Unsigned32'};
avp_name(518, 10415) ->
    {'Media-Component-Number', 'Unsigned32'};
avp_name(882, 10415) ->
    {'Media-Initiator-Flag', 'Enumerated'};
avp_name(1086, 193) ->
    {'Media-Interface-Flow-Statistics', 'Grouped'};
avp_name(1085, 193) ->
    {'Media-Interface-Statistics', 'Grouped'};
avp_name(1084, 193) -> {'Media-Statistics', 'Grouped'};
avp_name(1297, 193) ->
    {'Network-Call-Reference', 'UTF8String'};
avp_name(862, 10415) ->
    {'Node-Functionality', 'Enumerated'};
avp_name(2024, 10415) ->
    {'Number-Portability-Routing-Information',
     'UTF8String'};
avp_name(839, 10415) ->
    {'Originating-IOI', 'UTF8String'};
avp_name(853, 10415) ->
    {'Outgoing-Trunk-Group-ID', 'UTF8String'};
avp_name(1296, 193) ->
    {'Packet-Loss-Rate', 'Unsigned32'};
avp_name(1133, 193) ->
    {'Redirecting-Party-Address', 'UTF8String'};
avp_name(1251, 10415) ->
    {'Requested-Party-Address', 'UTF8String'};
avp_name(829, 10415) -> {'Role-of-Node', 'Enumerated'};
avp_name(1300, 193) ->
    {'Round-Trip-Delay', 'Unsigned64'};
avp_name(843, 10415) ->
    {'SDP-Media-Component', 'Grouped'};
avp_name(845, 10415) ->
    {'SDP-Media-Description', 'UTF8String'};
avp_name(844, 10415) ->
    {'SDP-Media-Name', 'UTF8String'};
avp_name(842, 10415) ->
    {'SDP-Session-Description', 'UTF8String'};
avp_name(824, 10415) -> {'SIP-Method', 'UTF8String'};
avp_name(335, 193) -> {'SIP-Reason', 'Grouped'};
avp_name(336, 193) ->
    {'SIP-Reason-Cause', 'Unsigned32'};
avp_name(337, 193) -> {'SIP-Reason-Text', 'UTF8String'};
avp_name(834, 10415) ->
    {'SIP-Request-Timestamp', 'Time'};
avp_name(2301, 10415) ->
    {'SIP-Request-Timestamp-Fraction', 'Unsigned32'};
avp_name(835, 10415) ->
    {'SIP-Response-Timestamp', 'Time'};
avp_name(2302, 10415) ->
    {'SIP-Response-Timestamp-Fraction', 'Unsigned32'};
avp_name(461, undefined) ->
    {'Service-Context-Id', 'UTF8String'};
avp_name(873, 10415) ->
    {'Service-Information', 'Grouped'};
avp_name(840, 10415) ->
    {'Terminating-IOI', 'UTF8String'};
avp_name(833, 10415) -> {'Time-Stamps', 'Grouped'};
avp_name(1299, 193) ->
    {'Total-Session-Duration', 'Unsigned64'};
avp_name(1266, 193) ->
    {'Transaction-Data-Name', 'UTF8String'};
avp_name(1267, 193) ->
    {'Transaction-Data-Value', 'UTF8String'};
avp_name(1264, 193) -> {'Transaction-Info', 'Grouped'};
avp_name(1265, 193) ->
    {'Transaction-Type', 'Enumerated'};
avp_name(851, 10415) -> {'Trunk-Group-ID', 'Grouped'};
avp_name(830, 10415) ->
    {'User-Session-ID', 'UTF8String'};
avp_name(1100, 193) -> {'User-Side', 'Enumerated'};
avp_name(483, undefined) ->
    {'Accounting-Realtime-Required', 'Enumerated'};
avp_name(485, undefined) ->
    {'Accounting-Record-Number', 'Unsigned32'};
avp_name(480, undefined) ->
    {'Accounting-Record-Type', 'Enumerated'};
avp_name(287, undefined) ->
    {'Accounting-Sub-Session-Id', 'Unsigned64'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(85, undefined) ->
    {'Acct-Interim-Interval', 'Unsigned32'};
avp_name(50, undefined) ->
    {'Acct-Multi-Session-Id', 'UTF8String'};
avp_name(44, undefined) ->
    {'Acct-Session-Id', 'OctetString'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(276, undefined) ->
    {'Auth-Grace-Period', 'Unsigned32'};
avp_name(274, undefined) ->
    {'Auth-Request-Type', 'Enumerated'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(291, undefined) ->
    {'Authorization-Lifetime', 'Unsigned32'};
avp_name(25, undefined) -> {'Class', 'OctetString'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(273, undefined) ->
    {'Disconnect-Cause', 'Enumerated'};
avp_name(300, undefined) -> {'E2E-Sequence', 'Grouped'};
avp_name(281, undefined) ->
    {'Error-Message', 'UTF8String'};
avp_name(294, undefined) ->
    {'Error-Reporting-Host', 'DiameterIdentity'};
avp_name(55, undefined) -> {'Event-Timestamp', 'Time'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(298, undefined) ->
    {'Experimental-Result-Code', 'Unsigned32'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(267, undefined) ->
    {'Firmware-Revision', 'Unsigned32'};
avp_name(257, undefined) ->
    {'Host-IP-Address', 'Address'};
avp_name(299, undefined) ->
    {'Inband-Security-Id', 'Unsigned32'};
avp_name(272, undefined) ->
    {'Multi-Round-Time-Out', 'Unsigned32'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(278, undefined) ->
    {'Origin-State-Id', 'Unsigned32'};
avp_name(269, undefined) ->
    {'Product-Name', 'UTF8String'};
avp_name(280, undefined) ->
    {'Proxy-Host', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(33, undefined) ->
    {'Proxy-State', 'OctetString'};
avp_name(285, undefined) ->
    {'Re-Auth-Request-Type', 'Enumerated'};
avp_name(292, undefined) ->
    {'Redirect-Host', 'DiameterURI'};
avp_name(261, undefined) ->
    {'Redirect-Host-Usage', 'Enumerated'};
avp_name(262, undefined) ->
    {'Redirect-Max-Cache-Time', 'Unsigned32'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(270, undefined) ->
    {'Session-Binding', 'Unsigned32'};
avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(271, undefined) ->
    {'Session-Server-Failover', 'Enumerated'};
avp_name(27, undefined) ->
    {'Session-Timeout', 'Unsigned32'};
avp_name(265, undefined) ->
    {'Supported-Vendor-Id', 'Unsigned32'};
avp_name(295, undefined) ->
    {'Termination-Cause', 'Enumerated'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
avp_name(_, _) -> 'AVP'.

avp_arity('ACR', 'Session-Id') -> 1;
avp_arity('ACR', 'Origin-Host') -> 1;
avp_arity('ACR', 'Origin-Realm') -> 1;
avp_arity('ACR', 'Destination-Realm') -> 1;
avp_arity('ACR', 'Accounting-Record-Type') -> 1;
avp_arity('ACR', 'Accounting-Record-Number') -> 1;
avp_arity('ACR', 'Destination-Host') -> {0, 1};
avp_arity('ACR', 'Acct-Application-Id') -> {0, 1};
avp_arity('ACR', 'Event-Timestamp') -> {0, 1};
avp_arity('ACR', 'Service-Context-Id') -> {0, 1};
avp_arity('ACR', 'Service-Information') -> {0, 1};
avp_arity('ACR', 'Ericsson-Service-Information') ->
    {0, 1};
avp_arity('ACA', 'Session-Id') -> 1;
avp_arity('ACA', 'Result-Code') -> 1;
avp_arity('ACA', 'Origin-Host') -> 1;
avp_arity('ACA', 'Origin-Realm') -> 1;
avp_arity('ACA', 'Accounting-Record-Type') -> 1;
avp_arity('ACA', 'Accounting-Record-Number') -> 1;
avp_arity('ACA', 'Acct-Application-Id') -> {0, 1};
avp_arity('ACA', 'Experimental-Result') -> {0, 1};
avp_arity('ACA', 'Acct-Interim-Interval') -> {0, 1};
avp_arity('ACA', 'AVP') -> {0, '*'};
avp_arity('Ericsson-Service-Information',
	  'IMS-Service-Identification') ->
    {0, '*'};
avp_arity('Ericsson-Service-Information',
	  'Dial-Around-Indicator') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'SIP-Reason') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'From-Header') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'Media-Statistics') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'Redirecting-Party-Address') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'Network-Call-Reference') ->
    {0, 1};
avp_arity('Ericsson-Service-Information',
	  'Additional-Charging-Information') ->
    {0, '*'};
avp_arity('Ericsson-Service-Information',
	  'Transaction-Info') ->
    {0, '*'};
avp_arity('Event-Type', 'SIP-Method') -> {0, 1};
avp_arity('Event-Type', 'Event') -> {0, 1};
avp_arity('Event-Type', 'Expires') -> {0, 1};
avp_arity('IMS-Information', 'Node-Functionality') -> 1;
avp_arity('IMS-Information', 'Event-Type') -> {0, 1};
avp_arity('IMS-Information', 'Role-of-Node') -> {0, 1};
avp_arity('IMS-Information', 'User-Session-ID') ->
    {0, 1};
avp_arity('IMS-Information', 'Calling-Party-Address') ->
    {0, '*'};
avp_arity('IMS-Information', 'Called-Party-Address') ->
    {0, 1};
avp_arity('IMS-Information',
	  'Called-Asserted-Identity') ->
    {0, '*'};
avp_arity('IMS-Information',
	  'Number-Portability-Routing-Information') ->
    {0, 1};
avp_arity('IMS-Information',
	  'Carrier-Select-Routing-Information') ->
    {0, 1};
avp_arity('IMS-Information',
	  'Requested-Party-Address') ->
    {0, 1};
avp_arity('IMS-Information', 'Time-Stamps') -> {0, 1};
avp_arity('IMS-Information',
	  'Inter-Operator-Identifier') ->
    {0, 1};
avp_arity('IMS-Information',
	  'IMS-Charging-Identifier') ->
    {0, 1};
avp_arity('IMS-Information',
	  'SDP-Session-Description') ->
    {0, '*'};
avp_arity('IMS-Information', 'SDP-Media-Component') ->
    {0, '*'};
avp_arity('IMS-Information', 'Trunk-Group-ID') ->
    {0, 1};
avp_arity('IMS-Information', 'Cause-Code') -> {0, 1};
avp_arity('Inter-Operator-Identifier',
	  'Originating-IOI') ->
    {0, 1};
avp_arity('Inter-Operator-Identifier',
	  'Terminating-IOI') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Media-Component-Number') ->
    1;
avp_arity('Media-Interface-Flow-Statistics',
	  'Accounting-Input-Octets') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Accounting-Input-Packets') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Accounting-Output-Octets') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Accounting-Output-Packets') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Total-Session-Duration') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Packet-Loss-Rate') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'JB-Discard-Rate') ->
    {0, 1};
avp_arity('Media-Interface-Flow-Statistics',
	  'Round-Trip-Delay') ->
    {0, 1};
avp_arity('Media-Interface-Statistics', 'User-Side') ->
    1;
avp_arity('Media-Interface-Statistics',
	  'Media-Interface-Flow-Statistics') ->
    {0, 1};
avp_arity('Media-Statistics',
	  'Media-Interface-Statistics') ->
    {0, '*'};
avp_arity('SDP-Media-Component', 'SDP-Media-Name') ->
    {0, 1};
avp_arity('SDP-Media-Component',
	  'SDP-Media-Description') ->
    {0, '*'};
avp_arity('SDP-Media-Component',
	  'Media-Initiator-Flag') ->
    {0, 1};
avp_arity('Service-Information', 'IMS-Information') ->
    {0, 1};
avp_arity('SIP-Reason', 'SIP-Reason-Cause') -> {0, 1};
avp_arity('SIP-Reason', 'SIP-Reason-Text') -> {0, 1};
avp_arity('Time-Stamps', 'SIP-Request-Timestamp') ->
    {0, 1};
avp_arity('Time-Stamps', 'SIP-Response-Timestamp') ->
    {0, 1};
avp_arity('Time-Stamps',
	  'SIP-Request-Timestamp-Fraction') ->
    {0, 1};
avp_arity('Time-Stamps',
	  'SIP-Response-Timestamp-Fraction') ->
    {0, 1};
avp_arity('Transaction-Info', 'Transaction-Type') -> 1;
avp_arity('Transaction-Info',
	  'Transaction-Data-Name') ->
    1;
avp_arity('Transaction-Info',
	  'Transaction-Data-Value') ->
    {1, '*'};
avp_arity('Trunk-Group-ID',
	  'Incoming-Trunk-Group-ID') ->
    {0, 1};
avp_arity('Trunk-Group-ID',
	  'Outgoing-Trunk-Group-ID') ->
    {0, 1};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
	  'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    {1, '*'};
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity('E2E-Sequence', 'AVP') -> {2, '*'};
avp_arity(_, _) -> 0.

avp_header('Accounting-Input-Octets') ->
    {363, 64, undefined};
avp_header('Accounting-Input-Packets') ->
    {365, 64, undefined};
avp_header('Accounting-Output-Octets') ->
    {364, 64, undefined};
avp_header('Accounting-Output-Packets') ->
    {366, 64, undefined};
avp_header('Additional-Charging-Information') ->
    {1298, 192, 193};
avp_header('Called-Asserted-Identity') ->
    {1250, 192, 10415};
avp_header('Called-Party-Address') -> {832, 192, 10415};
avp_header('Calling-Party-Address') ->
    {831, 192, 10415};
avp_header('Carrier-Select-Routing-Information') ->
    {2023, 192, 10415};
avp_header('Cause-Code') -> {861, 192, 10415};
avp_header('Dial-Around-Indicator') -> {1160, 192, 193};
avp_header('Ericsson-Service-Information') ->
    {285, 192, 193};
avp_header('Event') -> {825, 192, 10415};
avp_header('Event-Type') -> {823, 192, 10415};
avp_header('Expires') -> {888, 192, 10415};
avp_header('From-Header') -> {1153, 192, 193};
avp_header('IMS-Charging-Identifier') ->
    {841, 192, 10415};
avp_header('IMS-Information') -> {876, 192, 10415};
avp_header('IMS-Service-Identification') ->
    {284, 192, 193};
avp_header('Incoming-Trunk-Group-ID') ->
    {852, 192, 10415};
avp_header('Inter-Operator-Identifier') ->
    {838, 192, 10415};
avp_header('JB-Discard-Rate') -> {1301, 192, 193};
avp_header('Media-Component-Number') ->
    {518, 192, 10415};
avp_header('Media-Initiator-Flag') -> {882, 192, 10415};
avp_header('Media-Interface-Flow-Statistics') ->
    {1086, 192, 193};
avp_header('Media-Interface-Statistics') ->
    {1085, 192, 193};
avp_header('Media-Statistics') -> {1084, 192, 193};
avp_header('Network-Call-Reference') ->
    {1297, 192, 193};
avp_header('Node-Functionality') -> {862, 192, 10415};
avp_header('Number-Portability-Routing-Information') ->
    {2024, 192, 10415};
avp_header('Originating-IOI') -> {839, 192, 10415};
avp_header('Outgoing-Trunk-Group-ID') ->
    {853, 192, 10415};
avp_header('Packet-Loss-Rate') -> {1296, 192, 193};
avp_header('Redirecting-Party-Address') ->
    {1133, 192, 193};
avp_header('Requested-Party-Address') ->
    {1251, 192, 10415};
avp_header('Role-of-Node') -> {829, 192, 10415};
avp_header('Round-Trip-Delay') -> {1300, 192, 193};
avp_header('SDP-Media-Component') -> {843, 192, 10415};
avp_header('SDP-Media-Description') ->
    {845, 192, 10415};
avp_header('SDP-Media-Name') -> {844, 192, 10415};
avp_header('SDP-Session-Description') ->
    {842, 192, 10415};
avp_header('SIP-Method') -> {824, 192, 10415};
avp_header('SIP-Reason') -> {335, 192, 193};
avp_header('SIP-Reason-Cause') -> {336, 192, 193};
avp_header('SIP-Reason-Text') -> {337, 192, 193};
avp_header('SIP-Request-Timestamp') ->
    {834, 192, 10415};
avp_header('SIP-Request-Timestamp-Fraction') ->
    {2301, 192, 10415};
avp_header('SIP-Response-Timestamp') ->
    {835, 192, 10415};
avp_header('SIP-Response-Timestamp-Fraction') ->
    {2302, 192, 10415};
avp_header('Service-Context-Id') ->
    {461, 64, undefined};
avp_header('Service-Information') -> {873, 192, 10415};
avp_header('Terminating-IOI') -> {840, 192, 10415};
avp_header('Time-Stamps') -> {833, 192, 10415};
avp_header('Total-Session-Duration') ->
    {1299, 192, 193};
avp_header('Transaction-Data-Name') -> {1266, 192, 193};
avp_header('Transaction-Data-Value') ->
    {1267, 192, 193};
avp_header('Transaction-Info') -> {1264, 192, 193};
avp_header('Transaction-Type') -> {1265, 192, 193};
avp_header('Trunk-Group-ID') -> {851, 192, 10415};
avp_header('User-Session-ID') -> {830, 192, 10415};
avp_header('User-Side') -> {1100, 192, 193};
avp_header('Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Realtime-Required');
avp_header('Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Number');
avp_header('Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Type');
avp_header('Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Sub-Session-Id');
avp_header('Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Application-Id');
avp_header('Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Interim-Interval');
avp_header('Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Multi-Session-Id');
avp_header('Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Session-Id');
avp_header('Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Application-Id');
avp_header('Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Grace-Period');
avp_header('Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Request-Type');
avp_header('Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Session-State');
avp_header('Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp_header('Authorization-Lifetime');
avp_header('Class') ->
    diameter_gen_base_rfc3588:avp_header('Class');
avp_header('Destination-Host') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Host');
avp_header('Destination-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Realm');
avp_header('Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Disconnect-Cause');
avp_header('E2E-Sequence') ->
    diameter_gen_base_rfc3588:avp_header('E2E-Sequence');
avp_header('Error-Message') ->
    diameter_gen_base_rfc3588:avp_header('Error-Message');
avp_header('Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp_header('Error-Reporting-Host');
avp_header('Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp_header('Event-Timestamp');
avp_header('Experimental-Result') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result');
avp_header('Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result-Code');
avp_header('Failed-AVP') ->
    diameter_gen_base_rfc3588:avp_header('Failed-AVP');
avp_header('Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp_header('Firmware-Revision');
avp_header('Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp_header('Host-IP-Address');
avp_header('Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp_header('Inband-Security-Id');
avp_header('Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp_header('Multi-Round-Time-Out');
avp_header('Origin-Host') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Host');
avp_header('Origin-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Realm');
avp_header('Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp_header('Origin-State-Id');
avp_header('Product-Name') ->
    diameter_gen_base_rfc3588:avp_header('Product-Name');
avp_header('Proxy-Host') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Host');
avp_header('Proxy-Info') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Info');
avp_header('Proxy-State') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-State');
avp_header('Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Re-Auth-Request-Type');
avp_header('Redirect-Host') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host');
avp_header('Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host-Usage');
avp_header('Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Max-Cache-Time');
avp_header('Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Result-Code');
avp_header('Route-Record') ->
    diameter_gen_base_rfc3588:avp_header('Route-Record');
avp_header('Session-Binding') ->
    diameter_gen_base_rfc3588:avp_header('Session-Binding');
avp_header('Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Session-Id');
avp_header('Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp_header('Session-Server-Failover');
avp_header('Session-Timeout') ->
    diameter_gen_base_rfc3588:avp_header('Session-Timeout');
avp_header('Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Supported-Vendor-Id');
avp_header('Termination-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Termination-Cause');
avp_header('User-Name') ->
    diameter_gen_base_rfc3588:avp_header('User-Name');
avp_header('Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Id');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Specific-Application-Id');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Accounting-Input-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Accounting-Input-Packets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Accounting-Output-Octets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Accounting-Output-Packets') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Additional-Charging-Information') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Called-Asserted-Identity') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Called-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Calling-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Carrier-Select-Routing-Information') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Cause-Code') ->
    diameter_types:'Integer32'(T, Data);
avp(T, Data, 'Dial-Around-Indicator') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Ericsson-Service-Information') ->
    grouped_avp(T, 'Ericsson-Service-Information', Data);
avp(T, Data, 'Event') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Event-Type') ->
    grouped_avp(T, 'Event-Type', Data);
avp(T, Data, 'Expires') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'From-Header') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'IMS-Charging-Identifier') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'IMS-Information') ->
    grouped_avp(T, 'IMS-Information', Data);
avp(T, Data, 'IMS-Service-Identification') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Incoming-Trunk-Group-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Inter-Operator-Identifier') ->
    grouped_avp(T, 'Inter-Operator-Identifier', Data);
avp(T, Data, 'JB-Discard-Rate') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Media-Component-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Media-Initiator-Flag') ->
    enumerated_avp(T, 'Media-Initiator-Flag', Data);
avp(T, Data, 'Media-Interface-Flow-Statistics') ->
    grouped_avp(T, 'Media-Interface-Flow-Statistics', Data);
avp(T, Data, 'Media-Interface-Statistics') ->
    grouped_avp(T, 'Media-Interface-Statistics', Data);
avp(T, Data, 'Media-Statistics') ->
    grouped_avp(T, 'Media-Statistics', Data);
avp(T, Data, 'Network-Call-Reference') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Node-Functionality') ->
    enumerated_avp(T, 'Node-Functionality', Data);
avp(T, Data,
    'Number-Portability-Routing-Information') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Originating-IOI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Outgoing-Trunk-Group-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Packet-Loss-Rate') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Redirecting-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Requested-Party-Address') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Role-of-Node') ->
    enumerated_avp(T, 'Role-of-Node', Data);
avp(T, Data, 'Round-Trip-Delay') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'SDP-Media-Component') ->
    grouped_avp(T, 'SDP-Media-Component', Data);
avp(T, Data, 'SDP-Media-Description') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SDP-Media-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SDP-Session-Description') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Method') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Reason') ->
    grouped_avp(T, 'SIP-Reason', Data);
avp(T, Data, 'SIP-Reason-Cause') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Reason-Text') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Request-Timestamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'SIP-Request-Timestamp-Fraction') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Response-Timestamp') ->
    diameter_types:'Time'(T, Data);
avp(T, Data, 'SIP-Response-Timestamp-Fraction') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'Service-Context-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Service-Information') ->
    grouped_avp(T, 'Service-Information', Data);
avp(T, Data, 'Terminating-IOI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Time-Stamps') ->
    grouped_avp(T, 'Time-Stamps', Data);
avp(T, Data, 'Total-Session-Duration') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'Transaction-Data-Name') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Transaction-Data-Value') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Transaction-Info') ->
    grouped_avp(T, 'Transaction-Info', Data);
avp(T, Data, 'Transaction-Type') ->
    enumerated_avp(T, 'Transaction-Type', Data);
avp(T, Data, 'Trunk-Group-ID') ->
    grouped_avp(T, 'Trunk-Group-ID', Data);
avp(T, Data, 'User-Session-ID') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'User-Side') ->
    enumerated_avp(T, 'User-Side', Data);
avp(T, Data, 'Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Realtime-Required');
avp(T, Data, 'Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Number');
avp(T, Data, 'Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Type');
avp(T, Data, 'Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Sub-Session-Id');
avp(T, Data, 'Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Application-Id');
avp(T, Data, 'Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Interim-Interval');
avp(T, Data, 'Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Multi-Session-Id');
avp(T, Data, 'Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Session-Id');
avp(T, Data, 'Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Application-Id');
avp(T, Data, 'Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Grace-Period');
avp(T, Data, 'Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Request-Type');
avp(T, Data, 'Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Session-State');
avp(T, Data, 'Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Authorization-Lifetime');
avp(T, Data, 'Class') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Class');
avp(T, Data, 'Destination-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Host');
avp(T, Data, 'Destination-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Realm');
avp(T, Data, 'Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Disconnect-Cause');
avp(T, Data, 'E2E-Sequence') ->
    grouped_avp(T, 'E2E-Sequence', Data);
avp(T, Data, 'Error-Message') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Error-Message');
avp(T, Data, 'Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Error-Reporting-Host');
avp(T, Data, 'Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Event-Timestamp');
avp(T, Data, 'Experimental-Result') ->
    grouped_avp(T, 'Experimental-Result', Data);
avp(T, Data, 'Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Experimental-Result-Code');
avp(T, Data, 'Failed-AVP') ->
    grouped_avp(T, 'Failed-AVP', Data);
avp(T, Data, 'Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Firmware-Revision');
avp(T, Data, 'Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Host-IP-Address');
avp(T, Data, 'Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Inband-Security-Id');
avp(T, Data, 'Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Multi-Round-Time-Out');
avp(T, Data, 'Origin-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Host');
avp(T, Data, 'Origin-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Realm');
avp(T, Data, 'Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Origin-State-Id');
avp(T, Data, 'Product-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Product-Name');
avp(T, Data, 'Proxy-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-Host');
avp(T, Data, 'Proxy-Info') ->
    grouped_avp(T, 'Proxy-Info', Data);
avp(T, Data, 'Proxy-State') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-State');
avp(T, Data, 'Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Re-Auth-Request-Type');
avp(T, Data, 'Redirect-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Redirect-Host');
avp(T, Data, 'Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Host-Usage');
avp(T, Data, 'Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Max-Cache-Time');
avp(T, Data, 'Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Result-Code');
avp(T, Data, 'Route-Record') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Route-Record');
avp(T, Data, 'Session-Binding') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Binding');
avp(T, Data, 'Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Session-Id');
avp(T, Data, 'Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Server-Failover');
avp(T, Data, 'Session-Timeout') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Timeout');
avp(T, Data, 'Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Supported-Vendor-Id');
avp(T, Data, 'Termination-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Termination-Cause');
avp(T, Data, 'User-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'User-Name');
avp(T, Data, 'Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Vendor-Id');
avp(T, Data, 'Vendor-Specific-Application-Id') ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data);
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Media-Initiator-Flag', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Media-Initiator-Flag', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Media-Initiator-Flag',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Media-Initiator-Flag', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Node-Functionality', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Node-Functionality', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Node-Functionality', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Node-Functionality', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Node-Functionality', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Node-Functionality', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'Node-Functionality', 6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'Node-Functionality', 7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'Node-Functionality', 8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'Node-Functionality', 9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'Node-Functionality',
	       <<0, 0, 0, 110>>) ->
    110;
enumerated_avp(encode, 'Node-Functionality', 110) ->
    <<0, 0, 0, 110>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Role-of-Node', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Role-of-Node', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'Role-of-Node', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'Role-of-Node', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'Role-of-Node', 4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'Role-of-Node',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'Role-of-Node', 5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'Transaction-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'Transaction-Type', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'Transaction-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'Transaction-Type', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'User-Side', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'User-Side', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'User-Side', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'User-Side', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Ericsson-Service-Information') ->
    empty_group('Ericsson-Service-Information');
empty_value('Event-Type') -> empty_group('Event-Type');
empty_value('IMS-Information') ->
    empty_group('IMS-Information');
empty_value('Inter-Operator-Identifier') ->
    empty_group('Inter-Operator-Identifier');
empty_value('Media-Interface-Flow-Statistics') ->
    empty_group('Media-Interface-Flow-Statistics');
empty_value('Media-Interface-Statistics') ->
    empty_group('Media-Interface-Statistics');
empty_value('Media-Statistics') ->
    empty_group('Media-Statistics');
empty_value('SDP-Media-Component') ->
    empty_group('SDP-Media-Component');
empty_value('Service-Information') ->
    empty_group('Service-Information');
empty_value('SIP-Reason') -> empty_group('SIP-Reason');
empty_value('Time-Stamps') ->
    empty_group('Time-Stamps');
empty_value('Transaction-Info') ->
    empty_group('Transaction-Info');
empty_value('Trunk-Group-ID') ->
    empty_group('Trunk-Group-ID');
empty_value('Proxy-Info') -> empty_group('Proxy-Info');
empty_value('Failed-AVP') -> empty_group('Failed-AVP');
empty_value('Experimental-Result') ->
    empty_group('Experimental-Result');
empty_value('Vendor-Specific-Application-Id') ->
    empty_group('Vendor-Specific-Application-Id');
empty_value('E2E-Sequence') ->
    empty_group('E2E-Sequence');
empty_value('Media-Initiator-Flag') -> <<0, 0, 0, 0>>;
empty_value('Node-Functionality') -> <<0, 0, 0, 0>>;
empty_value('Role-of-Node') -> <<0, 0, 0, 0>>;
empty_value('Transaction-Type') -> <<0, 0, 0, 0>>;
empty_value('User-Side') -> <<0, 0, 0, 0>>;
empty_value('Disconnect-Cause') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Host-Usage') -> <<0, 0, 0, 0>>;
empty_value('Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Auth-Session-State') -> <<0, 0, 0, 0>>;
empty_value('Re-Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Termination-Cause') -> <<0, 0, 0, 0>>;
empty_value('Session-Server-Failover') ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Record-Type') -> <<0, 0, 0, 0>>;
empty_value('Accounting-Realtime-Required') ->
    <<0, 0, 0, 0>>;
empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"Accounting-Input-Octets", 363, "Unsigned64", "M"},
       {"Accounting-Input-Packets", 365, "Unsigned64", "M"},
       {"Accounting-Output-Octets", 364, "Unsigned64", "M"},
       {"Accounting-Output-Packets", 366, "Unsigned64", "M"},
       {"Additional-Charging-Information", 1298, "UTF8String",
	"VM"},
       {"Called-Asserted-Identity", 1250, "UTF8String", "VM"},
       {"Called-Party-Address", 832, "UTF8String", "VM"},
       {"Calling-Party-Address", 831, "UTF8String", "VM"},
       {"Carrier-Select-Routing-Information", 2023,
	"UTF8String", "VM"},
       {"Cause-Code", 861, "Integer32", "VM"},
       {"Dial-Around-Indicator", 1160, "UTF8String", "VM"},
       {"Ericsson-Service-Information", 285, "Grouped", "VM"},
       {"Event", 825, "UTF8String", "VM"},
       {"Event-Type", 823, "Grouped", "VM"},
       {"Expires", 888, "Unsigned32", "VM"},
       {"From-Header", 1153, "UTF8String", "VM"},
       {"IMS-Charging-Identifier", 841, "UTF8String", "VM"},
       {"IMS-Information", 876, "Grouped", "VM"},
       {"IMS-Service-Identification", 284, "UTF8String", "VM"},
       {"Incoming-Trunk-Group-ID", 852, "UTF8String", "VM"},
       {"Inter-Operator-Identifier", 838, "Grouped", "VM"},
       {"JB-Discard-Rate", 1301, "Unsigned32", "VM"},
       {"Media-Component-Number", 518, "Unsigned32", "VM"},
       {"Media-Initiator-Flag", 882, "Enumerated", "VM"},
       {"Media-Interface-Flow-Statistics", 1086, "Grouped",
	"VM"},
       {"Media-Interface-Statistics", 1085, "Grouped", "VM"},
       {"Media-Statistics", 1084, "Grouped", "VM"},
       {"Network-Call-Reference", 1297, "UTF8String", "VM"},
       {"Node-Functionality", 862, "Enumerated", "VM"},
       {"Number-Portability-Routing-Information", 2024,
	"UTF8String", "VM"},
       {"Originating-IOI", 839, "UTF8String", "VM"},
       {"Outgoing-Trunk-Group-ID", 853, "UTF8String", "VM"},
       {"Packet-Loss-Rate", 1296, "Unsigned32", "VM"},
       {"Redirecting-Party-Address", 1133, "UTF8String", "VM"},
       {"Requested-Party-Address", 1251, "UTF8String", "VM"},
       {"Role-of-Node", 829, "Enumerated", "VM"},
       {"Round-Trip-Delay", 1300, "Unsigned64", "VM"},
       {"SDP-Media-Component", 843, "Grouped", "VM"},
       {"SDP-Media-Description", 845, "UTF8String", "VM"},
       {"SDP-Media-Name", 844, "UTF8String", "VM"},
       {"SDP-Session-Description", 842, "UTF8String", "VM"},
       {"SIP-Method", 824, "UTF8String", "VM"},
       {"SIP-Reason", 335, "Grouped", "VM"},
       {"SIP-Reason-Cause", 336, "Unsigned32", "VM"},
       {"SIP-Reason-Text", 337, "UTF8String", "VM"},
       {"SIP-Request-Timestamp", 834, "Time", "VM"},
       {"SIP-Request-Timestamp-Fraction", 2301, "Unsigned32",
	"VM"},
       {"SIP-Response-Timestamp", 835, "Time", "VM"},
       {"SIP-Response-Timestamp-Fraction", 2302, "Unsigned32",
	"VM"},
       {"Service-Context-Id", 461, "UTF8String", "M"},
       {"Service-Information", 873, "Grouped", "VM"},
       {"Terminating-IOI", 840, "UTF8String", "VM"},
       {"Time-Stamps", 833, "Grouped", "VM"},
       {"Total-Session-Duration", 1299, "Unsigned64", "VM"},
       {"Transaction-Data-Name", 1266, "UTF8String", "VM"},
       {"Transaction-Data-Value", 1267, "UTF8String", "VM"},
       {"Transaction-Info", 1264, "Grouped", "VM"},
       {"Transaction-Type", 1265, "Enumerated", "VM"},
       {"Trunk-Group-ID", 851, "Grouped", "VM"},
       {"User-Session-ID", 830, "UTF8String", "VM"},
       {"User-Side", 1100, "Enumerated", "VM"}]},
     {avp_vendor_id,
      [{10415,
	["Called-Asserted-Identity", "Called-Party-Address",
	 "Calling-Party-Address",
	 "Carrier-Select-Routing-Information", "Cause-Code",
	 "Event", "Event-Type", "Expires",
	 "IMS-Charging-Identifier", "IMS-Information",
	 "Incoming-Trunk-Group-ID", "Inter-Operator-Identifier",
	 "Media-Component-Number", "Media-Initiator-Flag",
	 "Node-Functionality",
	 "Number-Portability-Routing-Information",
	 "Originating-IOI", "Outgoing-Trunk-Group-ID",
	 "Requested-Party-Address", "Role-of-Node",
	 "SDP-Media-Component", "SDP-Media-Description",
	 "SDP-Media-Name", "SDP-Session-Description",
	 "Service-Information", "SIP-Method",
	 "SIP-Request-Timestamp",
	 "SIP-Request-Timestamp-Fraction",
	 "SIP-Response-Timestamp",
	 "SIP-Response-Timestamp-Fraction", "Terminating-IOI",
	 "Time-Stamps", "Trunk-Group-ID", "User-Session-ID"]},
       {193,
	["Ericsson-Service-Information",
	 "IMS-Service-Identification", "Dial-Around-Indicator",
	 "SIP-Reason", "SIP-Reason-Cause", "SIP-Reason-Text",
	 "From-Header", "Redirecting-Party-Address",
	 "Network-Call-Reference",
	 "Additional-Charging-Information", "Media-Statistics",
	 "Media-Interface-Statistics",
	 "Media-Interface-Flow-Statistics", "Packet-Loss-Rate",
	 "Total-Session-Duration", "JB-Discard-Rate",
	 "Round-Trip-Delay", "Transaction-Data-Name",
	 "Transaction-Data-Value", "Transaction-Info",
	 "Transaction-Type", "User-Side"]}]},
     {codecs, []}, {command_codes, [{271, "ACR", "ACA"}]},
     {custom_types, []}, {define, []},
     {enum,
      [{"Media-Initiator-Flag",
	[{"called_party", 0}, {"calling_party", 1},
	 {"unknown", 2}]},
       {"Node-Functionality",
	[{"S-CSCF", 0}, {"P-CSCF", 1}, {"I-CSCF", 2},
	 {"MRFC", 3}, {"MGCF", 4}, {"BGCF", 5}, {"AS", 6},
	 {"E-CSCF", 7}, {"Exit_IBCF", 8}, {"Entry_IBCF", 9},
	 {"A-ALG", 110}]},
       {"Role-of-Node",
	[{"ORIGINATING_ROLE", 0}, {"TERMINATING_ROLE", 1},
	 {"PROXY_ROLE", 2}, {"B2BUA_ROLE", 3},
	 {"ENTRY_IBCF_ROLE", 4}, {"EXIT_IBCF_ROLE", 5}]},
       {"Transaction-Type",
	[{"SIP_Request", 0}, {"SIP_Response", 1}]},
       {"User-Side",
	[{"Calling_side", 0}, {"Called_side", 1}]}]},
     {grouped,
      [{"Ericsson-Service-Information", 285, [],
	[{'*', ["IMS-Service-Identification"]},
	 ["Dial-Around-Indicator"], ["SIP-Reason"],
	 ["From-Header"], ["Media-Statistics"],
	 ["Redirecting-Party-Address"],
	 ["Network-Call-Reference"],
	 {'*', ["Additional-Charging-Information"]},
	 {'*', ["Transaction-Info"]}]},
       {"Event-Type", 823, [],
	[["SIP-Method"], ["Event"], ["Expires"]]},
       {"IMS-Information", 876, [],
	[{"Node-Functionality"}, ["Event-Type"],
	 ["Role-of-Node"], ["User-Session-ID"],
	 {'*', ["Calling-Party-Address"]},
	 ["Called-Party-Address"],
	 {'*', ["Called-Asserted-Identity"]},
	 ["Number-Portability-Routing-Information"],
	 ["Carrier-Select-Routing-Information"],
	 ["Requested-Party-Address"], ["Time-Stamps"],
	 ["Inter-Operator-Identifier"],
	 ["IMS-Charging-Identifier"],
	 {'*', ["SDP-Session-Description"]},
	 {'*', ["SDP-Media-Component"]}, ["Trunk-Group-ID"],
	 ["Cause-Code"]]},
       {"Inter-Operator-Identifier", 838, [],
	[["Originating-IOI"], ["Terminating-IOI"]]},
       {"Media-Interface-Flow-Statistics", 1086, [],
	[{"Media-Component-Number"},
	 ["Accounting-Input-Octets"],
	 ["Accounting-Input-Packets"],
	 ["Accounting-Output-Octets"],
	 ["Accounting-Output-Packets"],
	 ["Total-Session-Duration"], ["Packet-Loss-Rate"],
	 ["JB-Discard-Rate"], ["Round-Trip-Delay"]]},
       {"Media-Interface-Statistics", 1085, [],
	[{"User-Side"}, ["Media-Interface-Flow-Statistics"]]},
       {"Media-Statistics", 1084, [],
	[{'*', ["Media-Interface-Statistics"]}]},
       {"SDP-Media-Component", 843, [],
	[["SDP-Media-Name"], {'*', ["SDP-Media-Description"]},
	 ["Media-Initiator-Flag"]]},
       {"Service-Information", 873, [], [["IMS-Information"]]},
       {"SIP-Reason", 335, [],
	[["SIP-Reason-Cause"], ["SIP-Reason-Text"]]},
       {"Time-Stamps", 833, [],
	[["SIP-Request-Timestamp"], ["SIP-Response-Timestamp"],
	 ["SIP-Request-Timestamp-Fraction"],
	 ["SIP-Response-Timestamp-Fraction"]]},
       {"Transaction-Info", 1264, [],
	[{"Transaction-Type"}, {"Transaction-Data-Name"},
	 {'*', {"Transaction-Data-Value"}}]},
       {"Trunk-Group-ID", 851, [],
	[["Incoming-Trunk-Group-ID"],
	 ["Outgoing-Trunk-Group-ID"]]}]},
     {id, 3},
     {import_avps,
      [{diameter_gen_base_rfc3588,
	[{"Accounting-Realtime-Required", 483, "Enumerated",
	  "M"},
	 {"Accounting-Record-Number", 485, "Unsigned32", "M"},
	 {"Accounting-Record-Type", 480, "Enumerated", "M"},
	 {"Accounting-Sub-Session-Id", 287, "Unsigned64", "M"},
	 {"Acct-Application-Id", 259, "Unsigned32", "M"},
	 {"Acct-Interim-Interval", 85, "Unsigned32", "M"},
	 {"Acct-Multi-Session-Id", 50, "UTF8String", "M"},
	 {"Acct-Session-Id", 44, "OctetString", "M"},
	 {"Auth-Application-Id", 258, "Unsigned32", "M"},
	 {"Auth-Grace-Period", 276, "Unsigned32", "M"},
	 {"Auth-Request-Type", 274, "Enumerated", "M"},
	 {"Auth-Session-State", 277, "Enumerated", "M"},
	 {"Authorization-Lifetime", 291, "Unsigned32", "M"},
	 {"Class", 25, "OctetString", "M"},
	 {"Destination-Host", 293, "DiameterIdentity", "M"},
	 {"Destination-Realm", 283, "DiameterIdentity", "M"},
	 {"Disconnect-Cause", 273, "Enumerated", "M"},
	 {"E2E-Sequence", 300, "Grouped", "M"},
	 {"Error-Message", 281, "UTF8String", []},
	 {"Error-Reporting-Host", 294, "DiameterIdentity", []},
	 {"Event-Timestamp", 55, "Time", "M"},
	 {"Experimental-Result", 297, "Grouped", "M"},
	 {"Experimental-Result-Code", 298, "Unsigned32", "M"},
	 {"Failed-AVP", 279, "Grouped", "M"},
	 {"Firmware-Revision", 267, "Unsigned32", []},
	 {"Host-IP-Address", 257, "Address", "M"},
	 {"Inband-Security-Id", 299, "Unsigned32", "M"},
	 {"Multi-Round-Time-Out", 272, "Unsigned32", "M"},
	 {"Origin-Host", 264, "DiameterIdentity", "M"},
	 {"Origin-Realm", 296, "DiameterIdentity", "M"},
	 {"Origin-State-Id", 278, "Unsigned32", "M"},
	 {"Product-Name", 269, "UTF8String", []},
	 {"Proxy-Host", 280, "DiameterIdentity", "M"},
	 {"Proxy-Info", 284, "Grouped", "M"},
	 {"Proxy-State", 33, "OctetString", "M"},
	 {"Re-Auth-Request-Type", 285, "Enumerated", "M"},
	 {"Redirect-Host", 292, "DiameterURI", "M"},
	 {"Redirect-Host-Usage", 261, "Enumerated", "M"},
	 {"Redirect-Max-Cache-Time", 262, "Unsigned32", "M"},
	 {"Result-Code", 268, "Unsigned32", "M"},
	 {"Route-Record", 282, "DiameterIdentity", "M"},
	 {"Session-Binding", 270, "Unsigned32", "M"},
	 {"Session-Id", 263, "UTF8String", "M"},
	 {"Session-Server-Failover", 271, "Enumerated", "M"},
	 {"Session-Timeout", 27, "Unsigned32", "M"},
	 {"Supported-Vendor-Id", 265, "Unsigned32", "M"},
	 {"Termination-Cause", 295, "Enumerated", "M"},
	 {"User-Name", 1, "UTF8String", "M"},
	 {"Vendor-Id", 266, "Unsigned32", "M"},
	 {"Vendor-Specific-Application-Id", 260, "Grouped",
	  "M"}]}]},
     {import_enums,
      [{diameter_gen_base_rfc3588,
	[{"Disconnect-Cause",
	  [{"REBOOTING", 0}, {"BUSY", 1},
	   {"DO_NOT_WANT_TO_TALK_TO_YOU", 2}]},
	 {"Redirect-Host-Usage",
	  [{"DONT_CACHE", 0}, {"ALL_SESSION", 1},
	   {"ALL_REALM", 2}, {"REALM_AND_APPLICATION", 3},
	   {"ALL_APPLICATION", 4}, {"ALL_HOST", 5},
	   {"ALL_USER", 6}]},
	 {"Auth-Request-Type",
	  [{"AUTHENTICATE_ONLY", 1}, {"AUTHORIZE_ONLY", 2},
	   {"AUTHORIZE_AUTHENTICATE", 3}]},
	 {"Auth-Session-State",
	  [{"STATE_MAINTAINED", 0}, {"NO_STATE_MAINTAINED", 1}]},
	 {"Re-Auth-Request-Type",
	  [{"AUTHORIZE_ONLY", 0}, {"AUTHORIZE_AUTHENTICATE", 1}]},
	 {"Termination-Cause",
	  [{"LOGOUT", 1}, {"SERVICE_NOT_PROVIDED", 2},
	   {"BAD_ANSWER", 3}, {"ADMINISTRATIVE", 4},
	   {"LINK_BROKEN", 5}, {"AUTH_EXPIRED", 6},
	   {"USER_MOVED", 7}, {"SESSION_TIMEOUT", 8}]},
	 {"Session-Server-Failover",
	  [{"REFUSE_SERVICE", 0}, {"TRY_AGAIN", 1},
	   {"ALLOW_SERVICE", 2}, {"TRY_AGAIN_ALLOW_SERVICE", 3}]},
	 {"Accounting-Record-Type",
	  [{"EVENT_RECORD", 1}, {"START_RECORD", 2},
	   {"INTERIM_RECORD", 3}, {"STOP_RECORD", 4}]},
	 {"Accounting-Realtime-Required",
	  [{"DELIVER_AND_GRANT", 1}, {"GRANT_AND_STORE", 2},
	   {"GRANT_AND_LOSE", 3}]}]}]},
     {import_groups,
      [{diameter_gen_base_rfc3588,
	[{"Proxy-Info", 284, [],
	  [{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
	 {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
	 {"Experimental-Result", 297, [],
	  [{"Vendor-Id"}, {"Experimental-Result-Code"}]},
	 {"Vendor-Specific-Application-Id", 260, [],
	  [{'*', {"Vendor-Id"}}, ["Auth-Application-Id"],
	   ["Acct-Application-Id"]]},
	 {"E2E-Sequence", 300, [], [{{2, '*'}, {"AVP"}}]}]}]},
     {inherits, [{"diameter_gen_base_rfc3588", []}]},
     {messages,
      [{"ACR", 271, ['REQ', 'PXY'], "\003",
	[{{"Session-Id"}}, {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Accounting-Record-Type"},
	 {"Accounting-Record-Number"}, ["Destination-Host"],
	 ["Acct-Application-Id"], ["Event-Timestamp"],
	 ["Service-Context-Id"], ["Service-Information"],
	 ["Ericsson-Service-Information"]]},
       {"ACA", 271, ['PXY'], "\003",
	[{{"Session-Id"}}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Accounting-Record-Type"},
	 {"Accounting-Record-Number"}, ["Acct-Application-Id"],
	 ["Experimental-Result"], ["Acct-Interim-Interval"],
	 {'*', ["AVP"]}]}]},
     {prefix, "diameter_ericsson_accounting"},
     {vendor, {193, "Ericsson"}}].


