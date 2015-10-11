-module(prob1).
-export([start/0, expected/0]).

start()->
    Input = <<"The quick brown fox jumps over the lazy dog">>,

    ExpectedOutput = solve(Input),

    ExpectedOutput.

solve(_Input)->
    io:format("~n TODO: prob1:solve/1",[]),
    [<<"The">>,<<"quick">>,<<"brown">>,<<"fox">>,<<"jumps">>,<<"over">>,<<"the">>,<<"lazy">>,<<"dog">>].

expected()->
    [<<"brown">>,<<"dog">>,<<"fox">>,<<"jumps">>,<<"lazy">>,
 <<"over">>,<<"quick">>,<<"the">>].
