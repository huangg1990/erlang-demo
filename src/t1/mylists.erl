%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 15:47
%%%-------------------------------------------------------------------
-module(mylists).
-author("tongzhou").

%% API
-export([sum/1]).

sum([H|T]) -> H + sum(T);
sum([]) -> 0.

%% test
%% erl
%% c(mylists)
%% L=[1, 3, 10]
%% mylists:sum(L)