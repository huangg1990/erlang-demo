%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 15:52
%%%-------------------------------------------------------------------
-module(mymap).
-author("tongzhou").

%% API
-export([map/2]).

map(_, []) -> [];

map(F, [H|T]) -> [F(H) | map(F, T)];

map(F, L) -> [F(X) || X <- L].


%%  test
%%  erl
%%  c(mymap)
%%  mymap:map(fun(X) -> 2*X end, [1, 2, 3, 4, 5]).
