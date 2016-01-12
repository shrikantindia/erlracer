-module(prob1_test).

-include_lib("eunit/include/eunit.hrl").

-define(USER, "shri").
-define(EVENT, "practice"). %% or choose one based on the meetup "erlhyd15oct11"

race_test_() ->
    {timeout, 15000, {setup,
     fun() ->
             [application:start(App) || App <- [asn1, crypto, public_key, ssl, inets]],

             Url = "https://erlracer.parseapp.com/leaderboard/prob1",
             {ok, R} = httpc:request(get, {Url, []}, [], [{sync, true}]),
             file:write_file("./leaderboard.txt", body(R)),
             ?assertNotEqual(?USER, "pick_a_nickname")
     end,
     fun(_) ->
             ok
     end,
     [
      {timeout, 5, ?_test(?debugVal(t_solve_test()))}
      , ?_test(t_is_clean())
      ]}}.

t_solve_test()->
    ContentType = "application/x-www-form-urlencoded",
    T1 = os:timestamp(),
    Output = prob1:start(),
    T2 = os:timestamp(),
    Expected = prob1:expected(),
    ?assertEqual(Expected, Output),
    case Output of
        Expected ->
            TimeTaken = timer:now_diff(T2,T1),
            Body = "event="++?EVENT++"&user="++ ?USER++"&time="++integer_to_list(TimeTaken),
            Url = "https://erlracer.parseapp.com/race/prob1",
            {ok,R} = httpc:request(post,
                                   {Url, [], ContentType, Body},
                                   [], []),
            file:write_file("./leaderboard.txt",body(R));
        _ ->
            ok
    end.

t_is_clean()->
    ok.

body({_, _, Body}) ->
    Body.
