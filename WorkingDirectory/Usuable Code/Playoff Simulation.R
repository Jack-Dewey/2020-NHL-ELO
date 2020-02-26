# This is the script for our playoff bracket simulation. We can use the ratings
# that we generate from our main elo model to predict the likelihood of any playoff
# series. We can simulate a series any number of times to show the most likely
# result in both the winner of the series and the most probable number of games played
# in a series.




# Functions

# This is our second elo function. This function takes the ratings of two teams
# and gives both the updated scores should either team win or lose as well as the
# probability that either team win.
elo.test <- function(TeamA, TeamB, k) {   # Team A and Team B values are their numeric ratings
  # k is the weight of calculation factor
  
  # This calculation is for the expected values for both teams
  EVA <- (1 / (1 + 10^((TeamB - TeamA)/400))) # This compares the ratings relative
  EVB <- (1 / (1 + 10^((TeamA - TeamB)/400))) # to the opposing team in order to
  # give a probability of winning
  
  # Calculating change in rating if win or lose for Team 1
  UpdateWinA  <- TeamA + k * (1 - EVA)
  UpdateLoseA  <- TeamA + k * (0 - EVA)
  
  # The same calculation as above for Team 2
  UpdateWinB <- TeamB + ((1-EVB)* k)
  UpdateLoseB <- TeamB + ((0-EVB)* k)
  
  # prob is the expected score column giving probabilities for winning
  # this creates a data frame of the expected values given as percentage
  prob <- (data.frame(prob=c(EVA,EVB)) * 100)
  # Win A shows the updated ratings should TeamA win
  WinA <- (data.frame(Win1=c(UpdateWinA,UpdateLoseB)))
  # Win B shows the updated ratings for both players should TeamB win
  WinB <- (data.frame(Win2=c(UpdateLoseA,UpdateWinB)))
  
  dattable <- cbind(prob,WinA,WinB)
  rownames(dattable) <- c('TeamA','TeamB')
  return(dattable)
}
# The elo.test.a function serves to store only the probability given of Team A winning.
# There is likely a more code-efficient way of accomplishing this, but I had
# already written the elo.test code and this worked sufficiently well in an
# acceptable amount of time
elo.test.a <- function(team.elo.a, team.elo.b, k){
  elo.test.a.result <- elo.test(team.elo.a, team.elo.b, k)
  stored.result <- elo.test.a.result[1,1]
  return(stored.result)
}


# This is our series simulation function.
# It takes the ratings for two teams, plus their names
# The function uses the probability that team A wins with the rbinom function
# to simulate a single match. It then stores each win for a team in win.test for 
# both team A and team B. As the NHL is a best of 7 format, a team must win a total
# of 4 games to win the series. Therefore, our function concludes when win.test for
# either team reaches 4.
# The function then tells us which team reached 4 wins first and how many rbinom 
# simulations were needed for a team to reach 4 wins.
simulate.series <- function(team.elo.a, team.elo.b, team.a, team.b) {
  win.counter <- c(0,0)
  names(win.counter) <- c('a', 'b')
  
  while(max(win.counter) != 4) {
    
    # Calculate winning percentage of team A 
    win.p.a <- elo.test.a(team.elo.a, team.elo.b, k)
    win.p.a <- win.p.a/100
    win.test <- rbinom(1 , 1, win.p.a) # running simulation for which team wins
    if(win.test == 1) {   # if/else argument for determining when a team wins the series
      some.winner <- 
        win.vector <- 1
      wins.toadd <- c(1,0)
    } else {
      some.winner <- 'B'
      win.vector <- 0
      wins.toadd <- c(0,1)
    }
    
    win.counter <- win.counter + wins.toadd
  }
  
  # Determine winner and return number of games
  n.games <- sum(win.counter)
  
  winner <- names(which(win.counter == 4)) # when win.counter reaches 4 for either team
  if(winner == 'a') {                      # determines the winner
    winning.team = team.a
  } else {
    winning.team = team.b
  }
  return(c(winning.team, n.games))
}



# If we want to run our simulation, we first need to set a k value
# by default, an elo model has a k value of 32. 
k <- 32
# We then run the simulation a single time
# We input given values for the two teams
# For example, lets say that Winnipeg has an elo rating of 1200 and Nashville
# has a rating of 1100. Thus,
simulate.series(1200,1100, 'Winnipeg', 'Nashville')
# This gives us the winner and in how many games played in the series




# We can choose to run this simulation any number of times and find the frequency
# distribution of outcomes
# In this example, we run the simulation 100 times.
set.seed(123)
testing.sim <- replicate(
  100,
  {
     simulate.series(1200,1100,'Vancouver', 'Calgary')
  }
)

# We then take the replicate and simulate series functions to create a combined function
# multiple.simulations function takes the elo ratings from 2 teams, their names,
# and the amount of simulations we want to run for a playoff series
# The function then simulates any number of times and produces a barplot
# that shows the frequency of teams winning in a certain number of games.
multiple.simulations <- function(team.elo.a, team.elo.b, team.a, team.b, sims){
  simulations.temp <- replicate(
    sims,
    {
      simulate.series(team.elo.a, team.elo.b, team.a, team.b)
    }
  )
  simulations.temp <- t(simulations.temp)  # need to transpose as our data is formatted weird
  colnames(simulations.temp) <- c("Team", "Series Length")  # adding column names
  simulations.temp <- as.data.frame(simulations.temp)
  barplot(table(simulations.temp), xlab = "Number of games played in a series", ylab = "Frequency", beside = T)
  legend("topleft",
         legend = levels(simulations.temp$Team),
         col = c("black", "grey"),
         pch =16,
         bty ="n",
         cex = 0.7)
  table(simulations.temp)
}

multiple.simulations(1150,1100,'Washington', 'Vegas', 100)


multiple.simulations(getRating("Tampa Bay Lightning"), getRating("Columbus Blue Jackets"), 'Tampa', 'Columbus', 10000)
