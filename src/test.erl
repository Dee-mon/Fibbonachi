-module(test).
-author("deem").
-export([calc/1,run/0,fib/1,tale_fib/1,tale_fib/3]).

%--------------------------------------------
run()->
calc(6).
%io:format("Fib ~w: ~w~n",[5,fib(6)]).

%--------------------------------------------
calc(0)->
io:format("Fib ~w: ~w~n",[1,1]);

calc(N)when N>0->
io:format("Fib ~w: ~w~n",[N+1,fib(N)]),
calc(N-1).
%--------------------------------------------
fib(0)->
1;
fib(1)->
1;
fib(N)when N>1->
fib(N-1)+fib(N-2).
%--------------------------------------------
tale_fib(N)->tale_fib(N,1,1).
tale_fib(1,Pr1,Pr2)->Pr2;
tale_fib(N,Pr1,Pr2)when N>0->tale_fib(N-1,Pr1+Pr2,Pr1).
%io:format("N= ~w,Pr1=~w,Pr2=~w~n",[N,Pr1,Pr2]).
%--------------------------------------------

