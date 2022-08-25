#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPO WIN_G OPPO_G
do
  #INSERT TEAMS INCLUDING WINNER AND OPPONENT
  if [[ $YEAR != year ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNER_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
      then
        echo Insert team, $WINNER
      fi
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPO'")
    if [[ -z $OPPO_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPO')")
      if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
      then
        echo Insert team, $OPPO
      fi
      OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPO'")
    fi
    # INSERT GAMES

    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', '$WINNER_ID', '$OPPO_ID', $WIN_G, $OPPO_G);")
    if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
    then
      echo Insert game, $YEAR $ROUND $WINNER
    fi
    
  fi
done
