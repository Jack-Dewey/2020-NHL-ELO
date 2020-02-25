library(dplyr)
library(tidyr)

# Functions
simulate.series <- function(team.elo.a, team.elo.b, team.a, team.b) {
  win.counter <- c(0,0)
  names(win.counter) <- c('a', 'b')
  elo.test.a <- function(team.elo.a, team.elo.b, k){
    elo.test.a.result <- elo.test(team.elo.a, team.elo.b, k)
    stored.result <- elo.test.a.result[1,1]
    return(stored.result)
  }
  

  while(max(win.counter) != 4) {


    
    # Calculate winning percentage of team A 
   win.p.a <- elo.test.a(TeamA, TeamB, k)
   win.p.a <- win.p.a/100
    win.test <- rbinom(1 , 1, win.p.a)
    if(win.test == 1) {
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
  
  winner <- names(which(win.counter == 4))
  if(winner == 'a') {
    winning.team = team.a
  } else {
    winning.team = team.b
  }
  return(c(winning.team, n.games))
}

who.wins <- function(team.a.id, team.b.id, rseed = 12345, n.reps = 1001){
  team.id.a <- team.a.id
  team.id.b <- team.b.id
  
  team.elo.a <- nhl.elo[team.id.a, 'Elo']
  team.elo.b <- nhl.elo[team.id.b, 'Elo']
  
  team.a.name <- nhl.elo[team.id.a, 'Team']
  team.b.name <- nhl.elo[team.id.b, 'Team']
  
  
  
  # Prepare matrix
  sim.output <- data.frame(rep = 1:n.reps, team = NA, games.n = 0)
  set.seed(rseed)
  for (i in 1:n.reps) {
    games.results <- simulate.series(team.elo.a, team.elo.b, team.a.name, team.b.name)
    sim.output[i,] <- c(i, games.results)
  }
  sim.output$games.n <- as.numeric(sim.output$games.n)
  
  t.toparse <- table(sim.output$team)
  
  # Winning team
  winning.team <- names(which(t.toparse == max(t.toparse)))
  winning.percentage <- max(t.toparse) / n.reps 
  games.table <- sim.output %>% 
    filter(team == winning.team) %>%
    group_by(games.n) %>%
    summarize(num.games = n())
  
  max.row <- which(games.table$num.games == max(games.table$num.games))
  num.games <- unlist(games.table[max.row, 1])
  
  cat(paste0('Winning team: ', winning.team, " at ", winning.percentage ,"\n"))
  cat(paste0("Number of games: ", num.games, "\n"))
  
  # return(c(winning.team, num.games))
}


simulate.series(1200,1100, 'Winnipeg', 'Nashville')
TeamA <- 1200
TeamB <- 1100
k <- 32
