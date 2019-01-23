%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 17:12
%%%-------------------------------------------------------------------
-module(qsort).
-author("tongzhou").

%% API
-export([qsort/1]).

qsort([]) -> [];
qsort([Pivot|T]) ->
  qsort([X || X <- T, X < Pivot])
  ++ [Pivot] ++
  qsort([X || X <- T, X >= Pivot]).



%%  test
%%  erl
%%  c(qsort)
%%  L=[23,8,1,90,17,11,23].
%%  qsort:qsort(L).
