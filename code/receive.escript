#!/usr/bin/env escript
recv(Sock) ->
  {ok, String} = gen_tcp:recv(Sock,0),
  io:format("Got string of length: ~p~n", [byte_size(String)]),
  recv(Sock).

main(_) ->
  {ok, L} = gen_tcp:listen(7777, [binary, {active, false}, {reuseaddr, true}, {packet, 4}]),
  {ok, Sock} = gen_tcp:accept(L),
  recv(Sock).
