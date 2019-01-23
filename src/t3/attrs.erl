%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 一月 2019 14:51
%%%-------------------------------------------------------------------
-module(attrs).
-author("tongzhou").
-vsn(1234).
-purpose("example of attributes").

%% API
-export([fac/1]).

fac(1) -> 1;
fac(N) -> N * fac(N-1).

