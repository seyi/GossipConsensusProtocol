-ifndef(GOSSIP_HRL_).
-define(GOSSIP_HRL_,1).

-record(gossip_info,{data,state}).
-record(sys_mgt,{replication,load_balancing,group_communication,consensus_algorithmm,
	network_topology}).

-endif.