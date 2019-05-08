%%%-------------------------------------------------------------------
%%% @author eltonplima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. mai 2019 04:03
%%%-------------------------------------------------------------------
-module(exercise33).
-author("eltonplima").

%% API
-export([print/1,print_even/1]).

print(N) ->
  print(1, N).
print_even(N) ->
  print_even(1, N, []).

print(M, N) when M == N ->
  io:format("Number:~p~n", [M]);
print(M, N) when M =< N ->
  io:format("Number:~p~n", [M]),
  print(M + 1, N).

print_even(M, N, Acc) when M > N -> Acc;
print_even(M, M, [H|Acc]) ->
  io:format("Number:~p~n", [H]),
  print_even(M, M, Acc);
print_even(M, N, Acc) when M rem 2 == 0 ->
  print_even(M + 1, N, Acc ++ [M]);
print_even(M, N, Acc) -> print_even(M + 1, N, Acc).
