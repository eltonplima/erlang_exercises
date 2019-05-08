%%%-------------------------------------------------------------------
%%% @author eltonplima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. mai 2019 03:34
%%%-------------------------------------------------------------------
-module(exercise31).
-author("eltonplima").

%% API
-export([sum/1,sum/2]).

sum(1) -> 1;
sum(N) when N > 0 ->
  N + sum(N - 1).

sum(N, M) when N == M ->
  N;
sum(N, M) when N < M ->
  N + sum(N + 1, M).
