-module(reverse_tail).
-export([reverse/1]).

reverse(List) -> reverse_acc(List, []).
reverse_acc([], Acc) -> Acc;
reverse_acc([H | T], Acc) -> reverse_acc(T, [H | Acc]).
