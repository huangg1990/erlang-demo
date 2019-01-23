%%%-------------------------------------------------------------------
%%% @author tongzhou
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 一月 2019 19:01
%%%-------------------------------------------------------------------
-module(try_catch).
-author("tongzhou").

%% API
-export([demo1/0,catcher/1,demo2/0, demo3/0]).

%%fuc1(L) ->
%%  try{
%%  %%block
%%  } catch(FuncOrExpressionSequence){
%%  %%block
%%  } catch(){
%%  %%block
%%  }finally{
%%  %%block
%%  }

demo1() ->
  [catcher(I) || I <- [1,2,3,4,5]].

catcher(N) ->
  try generate_exception(N) of
    Val -> {N, normal, Val}
  catch
    throw:X -> {N, caught, thrown, X};
    exit:X -> {N, caught, exited,X};
    error:X -> {N, caught, error, X}
  end.

demo2() ->
  [{I, (catch generate_exception(I))} || I <- [1,2,3,4,5]].


demo3() ->
  try generate_exception(5)
  catch
    error:X ->
      {X, erlang:get_stacktrace()}
  end.
