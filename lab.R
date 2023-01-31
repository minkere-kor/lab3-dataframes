### -------------------- Lab 3 --------------------
### This lab is designed to prepare you for PS3

## Create a vector of the number of points the Seahawks scored in the
## first (at least) 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Final' displays scores
## Use an appropriate variable name for the scores
## 
## Hint: feel free to invent if you cannot figure this out

seahawk_points <- c(23, 10, 13, 24, 27)

## Create a vector of the number of points the opponent
## scored against Seahawks in the first 5 games
## use an appropriate variable name

opponent_points <- c(6, 24, 21, 30, 23)

## Combine your two vectors into a dataframe

game_score <- data.frame(seahawk_points, opponent_points)
game_score

## Create a new column "diff" that is the difference in points
## (in favor of Hawks)

game_score$diff <- game_score$seahawk_points - game_score$opponent_points
game_score

## Create a new column "won" which is TRUE if the Seahawks won,
## ie if Seahawks scored more than the opponent scored against them

game_score$won <- game_score$diff > 0
game_score

## Create a vector of the opponents name (such as "Denver Broncos")

opponent_name <- c("Jets", "Chiefs", "49ers", "Panthers", "Rams")
opponent_name

## Add the vector of opponents into the data frame

game_score$opponent_name <-  opponent_name
game_score

## Compute the average score of Seahawks

avg <- sum(game_score$seahawk_points) / length(game_score$seahawk_points)
cat("The average score of the Seahawks was:", avg, "\n")

## Compute how many games did Seahawks won
## (use the 'won' variable to compute it)

win_compute <- sum(game_score$won)
cat("The Seahawks won", win_compute, "games.\n")

## What was the largest difference in scores (in favor of Seahawks)?
  
largest_diff <- max(game_score$diff)
cat("The largest difference in scores in favor of the Seahawks was:", largest_diff, "\n")

## How many different opponents did Seahawks have in these games?
## Hint: use `unique()` and `length()`

diff_opp <- length(unique(game_score$opponent_name))
cat("The Seahawks fought against", diff_opp, "unique opponents.\n")

## Print the variable names in your data frame

names(game_score)

## Write a loop over all variables in your data frame
## print the variable name inside the loop

for(element in names(game_score)){
  cat(element, "\n")
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and true/false, depending if the variable is numeric
## check out 'is.numeric()'

for(element in names(game_score)){
  cat(element, "is numeric:", is.numeric(game_score[[element]]), "\n")
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and the average value of the variable
## if the variable is numeric

for(element in names(game_score)){
  if(is.numeric(game_score[[element]])){
    cat(element, "average value is: ", mean(game_score[[element]]), "\n")
  }
}

##
## HR data
## You are working in HR for a large firm with 100 employees.
## You are analyzing their salaries.

## Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee
## 100")
## Hint: use 'paste()` or `str_c`



## Create a random vector of their 2021 salaries.
## Hint: you may use the runif function to create uniform random numbers,
## e.g. 'runif(100, 60, 120)' creates 100 random numbers between 60 and 120


## Create a random vector of 2022 salaries that are typically
## higher than the 2014 salaires (use runif again).
## For instance, if you create random numbers between 65 and 130, then 2022
## salaries tend to be larger than 2021 salaries.


## Create a data.frame 'salaries' by combining the vectors you just made


## Create a column 'raise' that stores the size of the
## raise between 2021 and 2022


## Retrieve values from your data frame to answer the following questions:
##
## What was the 2015 salary of employee 57


## Now round the answer down to two digits after comma
## check out 'round()' function


## How many employees got a raise?


## What was the value of the highest raise?
## Round the number to two digits!


## What was the name of the employee who recieved the highest raise?


## What was the average salary increase?
## Round the number!


## For people who did not get a raise, how much money did they lose?
## Round the number!
