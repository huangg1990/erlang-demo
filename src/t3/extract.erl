%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. 一月 2019 14:53
%%%-------------------------------------------------------------------
-module(extract).
-author("tongzhou").

%% API
-export([attribute/2]).

attribute(File, Key) ->
  case beam_lib:chunks(File, [attributes]) of
    {ok, {_Module, [{attributes, L}]}} ->
      case lookup(Key, L) of
        {ok, Val} ->
          Val;
        error ->
          exit(badAttribute)
      end;
    _ ->
      exit(badFile)
  end.

lookup(Key, [{Key, Val} | _]) -> {ok, Val};
lookup(Key, [_ | T]) -> lookup(Key, T);
lookup(_, []) -> error.
