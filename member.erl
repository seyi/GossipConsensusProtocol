%% @author anointedone
%% @doc @todo Add description to member.


-module(member).

%% ====================================================================
%% API functions
%% ====================================================================
-export([init/1,increment_heart_beat/1,select_random/1,
		 await_messages/0]).
-include("gossip.hrl").
-include("member.hrl").




%% ====================================================================
%% Internal functions
%% ====================================================================

init(#member{address=Add,neighbour_list=NL,
			 heart_beat_counter=HB_Count}) ->
	register(gossip_member,spawn(member,await_messages,[])).


forward_info(#gossip_info{data=Data},Member_List) ->
	Member = select_random(Member_List),
	Member ! {gossip,Data}.


 get_neighbours() ->
	"not yet implemented".

is_gossiping(Neighbor) ->
	"not yet implemented".

increment_heart_beat(#member{heart_beat_counter = HBC}) ->
	HBC + 1.

await_messages() ->
	receive
		{gossip,From} ->
			From ! {gossip,thanks},
			%error("not yet ready"),
		await_messages()
	end.



select_random(Member_List) ->
	lists:nth(rand:uniform(length(Member_List)),Member_List).

	

