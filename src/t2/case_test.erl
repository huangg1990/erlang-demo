%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 18:25
%%%-------------------------------------------------------------------
-module(case_test).
-author("tongzhou").

%% API
-export([f1/1,filter/2,filter1/4]).

f1(Expression)->
  case Expression of
    1  -> "ONE";
    2 -> "TWO";
    3 -> "THREAD";
    true -> "DEAUFLT"
  end.


filter1(true, H, P, T) -> [H|filter(P,T)];
filter1(false, H,P,T) -> filter(P,T).


filter(P, [H |T]) ->
  case P(H) of
    true -> [H|filter(P,T)];
    false -> filter(P,T)
  end;
filter(P,[]) ->
  [].

filter(P,[H|T]) -> filter1(P(H), H , P, T);
filter(P,[]) -> [].