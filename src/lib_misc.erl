%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 17:28
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("tongzhou").

%% API
-export([qsort/1, pythag/1, perms/1 ,odds_and_evens/1, odds_and_evens_acc/1, sqrt/1]).

%% 快速排序
qsort([]) -> [];
qsort([Pivot|T]) ->
    qsort([X || X <- T, X < Pivot])
    ++ [Pivot] ++
    qsort([X || X<- T, X >= Pivot]).

%%  test
%%  erl
%%  c(lib_misc)
%%  L=[23,8,1,90,17,11,23].
%%  lib_misc:qsort(L).

%% 比格拉斯三元组
%% lists:seq(1,N), 返回一个由1到N整数组成的列表
%% A <- lists:seq(1,N) 意味取值范围是1到N的所有整数
pythag(N) ->
  [{A, B, C} ||
    A <- lists:seq(1,N),
    B <- lists:seq(1,N),
    C <- lists:seq(1,N),
    A+B+C =< N,
    A*A+B*B =:= C*C
  ].
%%  test
%%  c(lib_misc).
%%  lib_misc:pythag(16).
%%  [{3,4,5},{4,3,5}]

%%  变位词
%%  穷尽字符串的所有可能排列
perms([]) -> [[]];
perms(L) -> [[H|T] || H <- L, T <- perms(L --[H])].

%%  test
%%  erl
%%  c(lib_misc).
%%  lib_misc:perms("cat").
%%  ["cat","cta","act","atc","tca","tac"]


%% 累加器
odds_and_evens(L)->
  Odds =[X || X<- L, (X rem 2) =:= 1],
  Evens = [X || X <- L, (X rem 2) =:= 0],
  {Odds, Evens}.

%%  erl
%%  c(lib_misc).
%%  lib_misc:odds_and_evens([1,2,3,4,5,6]).

odds_and_evens_acc(L) ->
  odds_and_evens_acc(L, [], []).

odds_and_evens_acc([H|T], Odds, Evens) ->
  case (H rem 2) of
    1 -> odds_and_evens_acc(T, [H|Odds], Evens);
    0 -> odds_and_evens_acc(T, Odds, [H| Evens])
  end;
odds_and_evens_acc([], Odds, Evens) ->
  {Odds, Evens}.

%%  erl
%%  c(lib_misc).
%%  lib_misc:odds_and_evens_acc([1,2,3,4,5,6]).

sqrt(X) when X < 0 ->
  erlang:error({squareRootNegativeArgument, X});
sqrt(X) ->
  math:sqrt(X).



