%%%-------------------------------------------------------------------
%%% @author eltonplima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. mai 2019 03:49
%%%-------------------------------------------------------------------
-module(exercise32).
-author("eltonplima").

%% API
-export([create/1,reverse_create/1]).

reverse_create(1) -> [1];
reverse_create(N) when N > 0 ->
  [N | reverse_create(N-1)].

create(N) -> lists:reverse(reverse_create(N)).
