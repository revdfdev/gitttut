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

-export([hello_world/0]).


printLn(OUTPUT) ->
  io:fwrite(OUTPUT).

hello_world() ->
  io:fwrite("Hello world\n"),
  Greeting = "Hello Rehan\n",
  X = 10,
  Y = 10,
  printLn(Greeting),
  do_count(19),
  Result = X + Y,
  SubStra = X - Y,
  Mult = X * Y,
  Divi = X / Y,
  io:fwrite(Greeting),
  io:fwrite("~w~n", [SubStra]),
  io:fwrite("~w~n", [Mult]),
  io:fwrite("~w~n", [Divi]),
  io:fwrite("~w~n", [Result]).


do_count(0) -> 0;
do_count(N) -> do_count(N - 1).
