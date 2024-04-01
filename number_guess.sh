#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

echo -e "\n~~~Number Guessing Game ~~~\n"

echo Enter your username:
read USERNAME

RETURNING_USER=$($PSQL SELECT username FROM users WHERE username = $USERNAME)
GAMES_PLAYED=$($PSQL SELECT games_played FROM games WHERE player_name = $RETURNING_USER)
BEST_GAME=$($PSQL SELECT best_game FROM games WHERE player_name = $RETURNING_USER)
if [[ -z $RETURNING_USER ]]
  then
    echo Welcome, $USERNAME! It looks like this is your first time here.

  else
  echo Welcome back, $RETURNING_USER! You played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

echo "Guess the secret number between 1 and 1000"
read GUESS

RANDOM_NUM=$((1 + $RANDOM%1000))










#USER_INFO=$($PSQL INSERT INTO number_guess (name,))