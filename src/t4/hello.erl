%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 09:28
%%%-------------------------------------------------------------------
-module(hello).
-author("tongzhou").

%% API
-export([start/0]).

start() ->
  io:format("Hello world ~n").

%%  test
%%  erlc hello.erl
%%  erl -noshell -s hello start -s init stop
%%  erl -eval 'io:format("Memory:~p~n", [erlang:memory(total)]).' -noshell -s init stop

%%-noshell  启动ErLange但是关闭shell

