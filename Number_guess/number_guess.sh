#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM user_data WHERE user_name='$USERNAME'")

if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES=$($PSQL "SELECT games FROM user_data WHERE user_id=$USER_ID;")
  BEST=$($PSQL "SELECT best FROM user_data WHERE user_id=$USER_ID;")
  echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."

fi

NUM=$(($RANDOM % 1000 + 1))
echo "Guess the secret number between 1 and 1000:"

# GUESS=-1
TRIES=0

GUESS_EXE(){
  # echo $NUM
  TRIES=$(($TRIES+1))
  if [[ $1 ]]
  then
    echo "$1"
  fi
  read GUESS
  
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    GUESS_EXE "That is not an integer, guess again:"
  else
    if [[ $GUESS<$NUM ]]
    then
      GUESS_EXE "It's lower than that, guess again:"
    else
      if [[ $GUESS>$NUM ]]
      then
      GUESS_EXE "It's higher than that, guess again:"
      else
        if [[ -z $USER_ID ]]
        then
          # echo NEW
          NEW
        else
          # echo UPDATE
          UPDATE
        fi
        echo "You guessed it in $TRIES tries. The secret number was $NUM. Nice job!"
      fi
    fi
  fi
}


UPDATE(){
  if [[ $TRIES < $BEST ]]
  then
    BEST=$TRIES
  fi
  GAMES=$(($GAMES+1))
  UPDATE_USER=$($PSQL "UPDATE user_data SET best=$BEST, games=$GAMES WHERE user_id=$USER_ID;")
}

NEW(){
  N=$($PSQL "INSERT INTO user_data(user_name, games, best) VALUES('$USERNAME', 1, $TRIES);")
}


GUESS_EXE
