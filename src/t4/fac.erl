%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 09:43
%%%-------------------------------------------------------------------
-module(fac).
-author("tongzhou").

%% API
-export([fac/1]).

fac(0) -> 1;
fac(N) -> N * fac(N-1).

%%  erl
%%  c(fac)
%%  fac:fac(20)
