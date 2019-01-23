%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 11:10
%%%-------------------------------------------------------------------
-module(geometry).
-author("tongzhou").

%% API
-export([area/1]).

area({rectangle, Width, Ht}) -> Width * Ht;
area({circle, R}) -> 3.14159 * R * R .

