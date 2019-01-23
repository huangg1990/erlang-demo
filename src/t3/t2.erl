%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 一月 2019 14:47
%%%-------------------------------------------------------------------
-module(t2).
-author("tongzhou").

%% API
-export([a/2, b/1]).

-import(lists, [map/2]).

f(L) ->
  L1 =map(fun(X) -> 2 * X end, L),
  lists:sum(L1).

a(X, Y) -> c(X) + a(Y).
a(X) -> 2 * X.
b(X) -> X * X.
c(X) -> 3 * X.
