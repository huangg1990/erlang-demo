%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 17:48
%%%-------------------------------------------------------------------
-module(hg_lib).
-author("tongzhou").

%% API
-export([max/2, min/2, f/2]).

%% getmax
max(X, Y) when X > Y -> X;
max(X, Y) -> Y.

%% getmin
min(X, Y) when X < Y -> X;
min(X, Y) -> Y.

%% is_atom(X) 是谓词
%% is_binary(X)是二进制数据
%% is_constant(X) 是常数
%% is_function(X) 是函数
%% is_function(X, N) 是有N个参数的函数
%% is_pid(X) 是进程标识符

%% X是整数，范围 >=0 && X > && Y< 6
f(X,Y) when is_integer(X),X >= 0, X >Y, Y< 6 -> true;
f(X,Y) -> false.













