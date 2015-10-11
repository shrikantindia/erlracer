Erlang challeges for great good, with leaderboards suited for hackathons


# 1. Pick a problem

    git clone https://github.com/bosky101/erlracer
    cd erlracer/prob1

# 2. Read the challenge

   cat src/prob1.erl

# 3. Complete the solution

   solution()-> ...

# 4. Test it

   make compile eunit

# 5. Compete!

   # edit your nickname 
   # vi prob1/test/prob1_test.erl %% edit line 10
   -define(USER, "pick_a_username").

   # checks the time taken by your program in microseconds, and submits
   #  to a leaderboard
   make race

# Leaderboard

    cd prob1
    make leaderboard
    
    /********************************************
    * Leaderboard for prob1
    ********************************************/
    User            Event           Time
    --------------  --------------  ------
    bosky101        practice        101.00
    


# Compete

    cd prob1 #or choose a different folder
    make compile race

