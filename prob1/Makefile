.PHONY: clean compile deps race
deps:
	rebar get-deps

clean:
	rebar clean

compile:
	rebar compile

eunit:
	rebar eunit skip_deps=true

race:	eunit
	leaderboard

leaderboard:
	curl https://erlracer.parseapp.com/leaderboard/prob1

