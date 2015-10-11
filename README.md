Erlang challeges for great good, with leaderboards suited for hackathons

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/bosky101/erlracer?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

# 1. Pick a problem

Fork or clone the repo

    git clone https://github.com/bosky101/erlracer 
    cd erlracer/prob1

# 2. Read the challenge

   cat src/prob1.erl

### Complete the solution

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
        [<<"brown">>,<<"dog">>,<<"fox">>,<<"jumps">>,<<"lazy">>,<<"over">>,<<"quick">>,<<"the">>].
    

# 3. Test it

(requires rebar)

    make compile eunit

# 4. Compete!

   
    # edit your nickname 
    # vi prob1/test/prob1_test.erl %% edit line 10
    -define(USER, "pick_a_username").
    -define(EVENT, "practice"). %% or change this. eg erlhyd15oct11

### Submit your solution

checks the time taken by your program in microseconds, and submits to a leaderboard, along with the problem name, your nickname, the event, and your time

    
    make race
    

# Leaderboard

    cd prob1
    make leaderboard
    
    /********************************************
    * Leaderboard for prob1
    ********************************************/
    User            Event           Time
    --------------  --------------  ------
    bosky101        practice        101000000.00
    

