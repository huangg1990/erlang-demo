%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 09:48
%%%-------------------------------------------------------------------
-module(fac1).
-author("tongzhou").

%% API
-export([main/1]).

main([A]) ->
  I = list_to_integer(atom_to_list(A)),
  F = fac(I),
  io:format("factorial ~w = ~w~n", [I, F]),
  init:stop().

fac(0) -> 1;
fac(N) -> N * fac(N-1).

%%  编译-执行
%%  erlc fac1.erl
%%  erl -noshell -s fac1 main 25
