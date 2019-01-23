%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. 一月 2019 11:25
%%%-------------------------------------------------------------------
-module(area_server1).
-author("tongzhou").

%% API
-export([loop/0,rpc/2]).

rpc(Pid, Request) ->
  Pid ! {self(), Request},
  receive
    {Pid,Response} ->
      Response
  end.

loop() ->
  receive
    {From, {rectanle, Width, Ht}} ->
      From ! Width * Ht,
      loop();
    {From, {circle, R}} ->
      From ! 3.14159 * R * R,
      loop();
    {From, Other} ->
      From ! {error, Other},
      loop()
  end.

%%  Pid ! {self(), {rectanle, 6, 10}}
%%  self()是客户端进程自己的Pid

%% erl
%% c(area_server1)
%% area_server1:rpc(xx,1x)
%%  test
%%  Pid = spawn(fun area_server1:loop/0).
%%  area_server1:rpc(Pid, {rectanle, 6, 8}).
%%  area_server1:rpc(Pid, {circle, 6}).
%%  area_server1:rpc(Pid, socks).
