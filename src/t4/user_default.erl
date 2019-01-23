%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 10:28
%%%-------------------------------------------------------------------
-module(user_default).
-author("tongzhou").

%% API
-export([hello/0,away/1]).


hello() ->
  "Hello Joe how are you?".

away(Time) ->
  io:format("Joe is away and will be back in ~w minutes~n", [Time]).


%%  erl
%%  c(user_default)
%%  user_default:hello().
%%  user_default:away(10).