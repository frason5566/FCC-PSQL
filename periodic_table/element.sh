#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if  [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  ELEMENT=$1
  ID=$($PSQL "SELECT atomic_number FROM elements WHERE name='$ELEMENT'")
  if [[ -z $ID ]]
  then
    ID=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$ELEMENT'")
    if [[ -z $ID ]]
    then 
      ID=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$ELEMENT")
    fi
  fi
  if [[ -z $ID ]]
  then
    echo "I could not find that element in the database."
  else
    # echo $ID
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ID;")
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ID;")
    TYPE=$($PSQL "SELECT type from properties LEFT JOIN types USING(type_id) WHERE atomic_number=$ID;")
    MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ID;")
    MP=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ID;")
    BP=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ID;")
    echo "The element with atomic number $(echo $ID | sed -r 's/^ *| *$//g') is $(echo $NAME | sed -r 's/^ *| *$//g') ($(echo $SYMBOL | sed -r 's/^ *| *$//g')). It's a $(echo $TYPE | sed -r 's/^ *| *$//g'), with a mass of $(echo $MASS | sed -r 's/^ *| *$//g') amu. $(echo $NAME | sed -r 's/^ *| *$//g') has a melting point of $(echo $MP | sed -r 's/^ *| *$//g') celsius and a boiling point of $(echo $BP | sed -r 's/^ *| *$//g') celsius."
  fi
fi



