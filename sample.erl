%sample to get started;
-module(sample).
-import(string, [
  len/1, 
  concat/2, 
  chr/2, 
  substr/3, 
  str/2,
  to_lower/1,
  to_upper/1 
]).

-export([hello_world/0, fac/1]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).

printLn(OUTPUT) ->
  io:fwrite(OUTPUT).

printNum(NUM) ->
  io:fwrite("~w~n", [NUM]).

hello_world() ->
  io:fwrite("Hello world\n"),
  Greeting = "Hello Rehan\n",
  X = 10,
  Y = 10,
  printLn(Greeting),
  Result = X + Y,
  SubStra = X - Y,
  Mult = X * Y,
  Divi = X / Y,
  XY = fac(9),
  io:fwrite("~w~n", [XY]),
  io:fwrite(Greeting),
  io:fwrite("~w~n", [SubStra]),
  io:fwrite("~w~n", [Mult]),
  io:fwrite("~w~n", [Divi]),
  io:fwrite("~w~n", [Result]).
