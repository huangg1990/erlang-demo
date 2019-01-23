%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 一月 2019 16:56
%%%-------------------------------------------------------------------
-module(m1).
-author("tongzhou").

%% API
-export([start/0, some_func/1,some_func/1]).

-ifdef(debug).
-define(TRACE(X), io:format("TRACE ~p:~p ~p~n",[?MODULE, ?LINE, X])).
-else.
-define(TRACE(X), void).
-endif.

start() -> loop(5).

loop(0) ->
  void;
loop(N) ->
  ?TRACE(N),
  loop(N-1).

%%  erl
%%  c(m1, {d, debug}).
%%  m1:start().


%%@spec get() -> [{Key, Value}].
%%@spec get_keys(Value) -> [Key].
%%@spec erase(Key) -> Value.

some_func(X) ->
  {P, Q} = some_other_func(X),
  io:format("Q = ~p~n", [Q]),
  P.

some_func(X) ->
  {P, Q} =some_other_func(X),
  %% io:format("Q = ~p~n", [Q]),
  P.

some_func(X) ->
  {P, Q} = some_other_func(X),
  io:format("_Q = ~p~n",[Q]),
  P.