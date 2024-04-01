#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

echo -e "\n~~~Number Guessing Game ~~~\n"

echo Enter your username:
read USERNAME

RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
BEST_GAME=$($PSQL "SELECT MIN(num_of_guesses) FROM games WHERE user_id = $USER_ID")
if [[ -z $RETURNING_USER ]]
  then
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo Welcome, $USERNAME! It looks like this is your first time here.

  else
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

RANDOM_NUM=$((1 + $RANDOM%1000))
echo "Guess the secret number between 1 and 1000:"

while read GUESS
do
  if [[ $GUESS -lt $RANDOM_NUM ]]
    then
      echo "It's higher than that, guess again:"
  if [[ $GUESS -gt $RANDOM_NUM ]]
  then
      echo "It's lower than that, guess again:"
  if [[ $GUESS -eq $RANDOM_NUM ]]
  then
      echo You guessed it in $COUNT tries. The secret number was $RANDOM_NUM. Nice job!
      exit

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"
    fi
    fi
    fi
  fi
  COUNT=$(( $COUNT + 1 ))
  done








USER_INFO=$($PSQL "INSERT INTO games (num_of_guesses,user_id)  VALUES($COUNT, $USER_ID))"