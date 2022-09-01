#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_AVAILABLE=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_P=$($PSQL "SELECT count(*) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
BEST_G=$($PSQL "SELECT min(number_try) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")



if [[ -z $USERNAME_AVAILABLE ]]
then
INSERT_USER_VALUE=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
echo "Welcome, $USERNAME! It looks like this is your first time here."
else
echo "Welcome back, $USERNAME! You have played $GAMES_P games, and your best game took $BEST_G guesses."
fi

RANDOM_NUMBER=$((RANDOM % 1000 + 1))
TRY=1
echo "Guess the secret number between 1 and 1000:"

while read NUMBER
do
if [[ ! $NUMBER =~ ^[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
else
    if [[ $NUMBER -eq $RANDOM_NUMBER ]]
    then
    break;
    else
      if [[ $NUMBER -gt $RANDOM_NUMBER ]]
      then
      echo "It's lower than that, guess again:"
      elif [[ $NUMBER -lt $RANDOM_NUMBER ]]
      then
      echo "It's higher than that, guess again:"
      fi
    fi
  fi
  TRY=$(( $TRY + 1 ))
done

if [[ $TRY == 1 ]]
then
  echo "You guessed it in $TRY tries. The secret number was $RANDOM_NUMBER. Nice job!"
else
  echo "You guessed it in $TRY tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME_VALUE=$($PSQL "INSERT INTO games(number_try, user_id) VALUES($TRY, $USER_ID)")