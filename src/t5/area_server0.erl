%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 11:12
%%%-------------------------------------------------------------------
-module(area_server0).
-author("tongzhou").

%% API
-export([loop/0]).

loop() ->
  receive
    {rectangle, Width, Ht} ->
      io:format("Area of rectangle is ~p~n", [Width * Ht]),
      loop();
    {circle, R} ->
      io:format("Area of circle is ~p~n",[3.14159 * R * R]),
      loop();
    Other ->
      io:format("I don't know what the area of a ~p is ~n", [Other]),
      loop()
  end.
%%  test
%%  erl
%%  c(area_server0).
%%  Pid = spawn(fun area_server0:loop/0).
%%  Pid ! {rectangle, 6, 10}.
%%  Pid ! {circle, 23}.
%%  Pid ! {triangle, 2, 4, 5}.

