%% @author anointedone
%% @doc @todo Add description to gossip.


-module(gossip).

%% ====================================================================
%% API functions
%% ====================================================================
-export([init_sys_mgt/1]).
-include("gossip.hrl").

-type heart_beat_counter :: integer().
-type t_gossip :: integer().



%% ====================================================================
%% Internal functions
%% ====================================================================

init_sys_mgt(#sys_mgt{}=R) ->
	R.

