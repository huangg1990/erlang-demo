%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 16:38
%%%-------------------------------------------------------------------
-module(shop2).
-author("tongzhou").

%% API
-export([total/1]).
-import(lists, [map/2, sum/1]).

%%total(L) ->
%%  sum(map(fun({What, N}) -> shop:cost(What) * N end, L)).

total(L) ->
  lists:sum([shop:cost(A) * B || {A, B} <- L]).




%%Buy = [{oranges, 4},{newspaper, 1}, {apples, 10}]
%%L1 = lists:map(fun({What,N}) -> shop:cost(What) * N end, Buy).
