%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 11:42
%%%-------------------------------------------------------------------
-module(area_server_final).
-author("tongzhou").

%% API
-export([start/0, area/2]).

start() -> spawn(fun loop/0).

area(Pid, What) ->
  rpc(Pid, What).

rpc(Pid, Request) ->
  Pid ! {self(), Request},
  receive
    {Pid, Response} ->
      Response
  end.

%%loop() ->
%%  receive
%%    {From, {rectangle, Width, Ht}} ->
%%      From ! {self(), Width * Ht},
%%      loop();
%%    {From, {circle, R}} ->
%%
%%  end