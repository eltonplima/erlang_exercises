-module(boolean).
-export([b_not/1, b_and/2, b_or/2, b_nand/2]).

b_not(true) ->
	false;
b_not(false) ->
	true.
b_and(true, false) ->
	false;
b_and(false, true) ->
	false;
b_and(_, _) ->
	true.
b_or(true, _) ->
	true;
b_or(_, true) ->
	true.
b_nand(X, Y) ->
	b_not(b_and(X, Y)).
