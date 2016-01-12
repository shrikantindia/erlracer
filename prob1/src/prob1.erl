-module(prob1).
-export([start/0, expected/0]).

start()->
    Input = <<"The quick brown fox jumps over the lazy dog">>,

    ExpectedOutput = solve(Input),

    ExpectedOutput.

%% below function will sort as well as delete duplicate entries
sort([]) -> [];
sort([M|[M|Rest]]) -> sort([M|Rest]);
sort([M|Rest]) -> 
sort([L || L <- Rest, L < M]) ++ [M] ++ sort([R || R <- Rest, R > M]).


solve(Input)->
%% fun to change the first character to lower case, if exists 
   Lower= fun(<<X:8,Rest/binary>>) when X < $a -> 
           <<(X+32):8,Rest/binary>>;
          (<<X:8,Rest/binary>>) -> 
           <<X:8,Rest/binary>>
       end,
%% split the binary into the list (delimiter " ") and change case if any 
   sort([Lower(N) || N <- binary:split(Input,<<" ">>,[global])]).

%%    [<<"The">>,<<"quick">>,<<"brown">>,<<"fox">>,<<"jumps">>,<<"over">>,<<"the">>,<<"lazy">>,<<"dog">>].

expected()->
    [<<"brown">>,<<"dog">>,<<"fox">>,<<"jumps">>,<<"lazy">>,<<"over">>,<<"quick">>,<<"the">>].
