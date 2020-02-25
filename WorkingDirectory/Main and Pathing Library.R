#Title: Main Codes and Pathing
#Name: Michael Lee and Jack Dewey
#Date: February 23rd, 2020
#
#Description: Creating pathways and main codes for visibility and 
#reproducibility 
#
# Index:
# 1. Working Directory and Pathways
# 2. 
# 3. 
# 4. ELO functions required for calculation

# 1. Working Directory and Pathways ---------------------------------------

#Current WD is the repository
NHLwd <- getwd()
#We set the WorkingDirectory folder as our WD
setwd(paste(NHLwd, "/", "WorkingDirectory", "/", sep = ""))

#Pathways
WD.Path <- paste(getwd(),"/",sep ="")
Playoff.Path <- paste(getwd(),"/", "Playoffs", "/", sep ="")
UnusedCode.Path <- paste(getwd(),"/", "Unused Code", "/", sep ="")
UsableCode.Path <- paste(getwd(),"/", "Usuable Code", "/", sep ="")

#List the regular seasons csv files in the WD
nhl.seasons <- list.files(pattern="*.csv")  
#We need to download all the regular season csv files as dataframes
for (i in 1:length(nhl.seasons)){ 
  assign(nhl.seasons[i], 
         read.csv(nhl.seasons[i], 
                  stringsAsFactors = FALSE))
}

#We can do the same for playoff csv files
nhl.playoffs <- list.files(path = Playoff.Path, pattern = "*.csv")

for (i in 1:length(nhl.playoffs)){
  assign(nhl.playoffs[i], 
         read.csv(paste(Playoff.Path, 
                        nhl.playoffs[i], 
                        sep = ""), 
                  stringsAsFactors = FALSE))
}


# 2. Modifying Team Names -------------------------------------------------

#We need to change the names of teams in earlier seasons to what they are 
#known as currently


#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2006.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2006.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2006.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2006.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2006.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2006.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2006.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2006.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2006.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2006.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2006.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2006.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2007.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2007.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2007.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2007.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2007.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2007.csv$Visitor == "Atlanta Thrashers")
#We change the names in the dataframe for home and away
NHL2007.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2007.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2007.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2007.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2007.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2007.csv$Visitor[AtlantaV] <- "Winnipeg Jets"
#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2008.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2008.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2008.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2008.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2008.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2008.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2008.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2008.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2008.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2008.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2008.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2008.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2009.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2009.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2009.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2009.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2009.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2009.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2009.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2009.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2009.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2009.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2009.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2009.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2010.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2010.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2010.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2010.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2010.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2010.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2010.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2010.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2010.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2010.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2010.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2010.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2011.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2011.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2011.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2011.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2011.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2011.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2011.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2011.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2011.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2011.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2011.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2011.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2012.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2012.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2012.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2012.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2012.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2012.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2012.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2012.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2012.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2012.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2012.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2012.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2013.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2013.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2013.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2013.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2013.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2013.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2013.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2013.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2013.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2013.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2013.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2013.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2014.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2014.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2014.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2014.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2014.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2014.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2014.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2014.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2014.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2014.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2014.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2014.csv$Visitor[AtlantaV] <- "Winnipeg Jets"

#We need to identify and standardize the team names of teams that play under
#different names currently.
PhoenixH <- which(NHL2015.csv$Home == "Phoenix Coyotes")
AnaheimH <- which(NHL2015.csv$Home == "Mighty Ducks of Anaheim")
AtlantaH <- which(NHL2015.csv$Home == "Atlanta Thrashers")
PhoenixV <- which(NHL2015.csv$Visitor == "Phoenix Coyotes")
AnaheimV <- which(NHL2015.csv$Visitor == "Mighty Ducks of Anaheim")
AtlantaV <- which(NHL2015.csv$Visitor == "Atlanta Thrashers")

#We change the names in the dataframe for home and away
NHL2015.csv$Home[PhoenixH] <- "Arizona Coyotes"
NHL2015.csv$Home[AnaheimH] <- "Anaheim Ducks"
NHL2015.csv$Home[AtlantaH] <- "Winnipeg Jets"
NHL2015.csv$Visitor[PhoenixV] <- "Arizona Coyotes"
NHL2015.csv$Visitor[AnaheimV] <- "Anaheim Ducks"
NHL2015.csv$Visitor[AtlantaV] <- "Winnipeg Jets"



# 3. Functions for Adding Winners and Losers -------------------------------


#We need to add a column for winners and losers for our model to work

for(i in 1:dim(NHL2006.csv)){
  if(NHL2006.csv$G[i] > NHL2006.csv$G.1[i]){
    NHL2006.csv$Winner[i] <- NHL2006.csv$Visitor[i]
    NHL2006.csv$Loser[i] <- NHL2006.csv$Home[i]
  }
  else if(NHL2006.csv$G.1[i] > NHL2006.csv$G[i]){
    NHL2006.csv$Winner[i] <- NHL2006.csv$Home[i]
    NHL2006.csv$Loser[i] <- NHL2006.csv$Visitor[i]
  }
}


for(i in 1:dim(NHL2007.csv)){
  if(NHL2007.csv$G[i] > NHL2007.csv$G.1[i]){
    NHL2007.csv$Winner[i] <- NHL2007.csv$Visitor[i]
    NHL2007.csv$Loser[i] <- NHL2007.csv$Home[i]
  }
  else if(NHL2007.csv$G.1[i] > NHL2007.csv$G[i]){
    NHL2007.csv$Winner[i] <- NHL2007.csv$Home[i]
    NHL2007.csv$Loser[i] <- NHL2007.csv$Visitor[i]
  }
}


for(i in 1:dim(NHL2008.csv)){
  if(NHL2008.csv$G[i] > NHL2008.csv$G.1[i]){
    NHL2008.csv$Winner[i] <- NHL2008.csv$Visitor[i]
    NHL2008.csv$Loser[i] <- NHL2008.csv$Home[i]
  }
  else if(NHL2008.csv$G.1[i] > NHL2008.csv$G[i]){
    NHL2008.csv$Winner[i] <- NHL2008.csv$Home[i]
    NHL2008.csv$Loser[i] <- NHL2008.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2009.csv)){
  if(NHL2009.csv$G[i] > NHL2009.csv$G.1[i]){
    NHL2009.csv$Winner[i] <- NHL2009.csv$Visitor[i]
    NHL2009.csv$Loser[i] <- NHL2009.csv$Home[i]
  }
  else if(NHL2009.csv$G.1[i] > NHL2009.csv$G[i]){
    NHL2009.csv$Winner[i] <- NHL2009.csv$Home[i]
    NHL2009.csv$Loser[i] <- NHL2009.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2010.csv)){
  if(NHL2010.csv$G[i] > NHL2010.csv$G.1[i]){
    NHL2010.csv$Winner[i] <- NHL2010.csv$Visitor[i]
    NHL2010.csv$Loser[i] <- NHL2010.csv$Home[i]
  }
  else if(NHL2010.csv$G.1[i] > NHL2010.csv$G[i]){
    NHL2010.csv$Winner[i] <- NHL2010.csv$Home[i]
    NHL2010.csv$Loser[i] <- NHL2010.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2011.csv)){
  if(NHL2011.csv$G[i] > NHL2011.csv$G.1[i]){
    NHL2011.csv$Winner[i] <- NHL2011.csv$Visitor[i]
    NHL2011.csv$Loser[i] <- NHL2011.csv$Home[i]
  }
  else if(NHL2011.csv$G.1[i] > NHL2011.csv$G[i]){
    NHL2011.csv$Winner[i] <- NHL2011.csv$Home[i]
    NHL2011.csv$Loser[i] <- NHL2011.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2012.csv)){
  if(NHL2012.csv$G[i] > NHL2012.csv$G.1[i]){
    NHL2012.csv$Winner[i] <- NHL2012.csv$Visitor[i]
    NHL2012.csv$Loser[i] <- NHL2012.csv$Home[i]
  }
  else if(NHL2012.csv$G.1[i] > NHL2012.csv$G[i]){
    NHL2012.csv$Winner[i] <- NHL2012.csv$Home[i]
    NHL2012.csv$Loser[i] <- NHL2012.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2013.csv)){
  if(NHL2013.csv$G[i] > NHL2013.csv$G.1[i]){
    NHL2013.csv$Winner[i] <- NHL2013.csv$Visitor[i]
    NHL2013.csv$Loser[i] <- NHL2013.csv$Home[i]
  }
  else if(NHL2013.csv$G.1[i] > NHL2013.csv$G[i]){
    NHL2013.csv$Winner[i] <- NHL2013.csv$Home[i]
    NHL2013.csv$Loser[i] <- NHL2013.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2014.csv)){
  if(NHL2014.csv$G[i] > NHL2014.csv$G.1[i]){
    NHL2014.csv$Winner[i] <- NHL2014.csv$Visitor[i]
    NHL2014.csv$Loser[i] <- NHL2014.csv$Home[i]
  }
  else if(NHL2014.csv$G.1[i] > NHL2014.csv$G[i]){
    NHL2014.csv$Winner[i] <- NHL2014.csv$Home[i]
    NHL2014.csv$Loser[i] <- NHL2014.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2015.csv)){
  if(NHL2015.csv$G[i] > NHL2015.csv$G.1[i]){
    NHL2015.csv$Winner[i] <- NHL2015.csv$Visitor[i]
    NHL2015.csv$Loser[i] <- NHL2015.csv$Home[i]
  }
  else if(NHL2015.csv$G.1[i] > NHL2015.csv$G[i]){
    NHL2015.csv$Winner[i] <- NHL2015.csv$Home[i]
    NHL2015.csv$Loser[i] <- NHL2015.csv$Visitor[i]
  }
}


for(i in 1:dim(NHL2016.csv)){
  if(NHL2016.csv$G[i] > NHL2016.csv$G.1[i]){
    NHL2016.csv$Winner[i] <- NHL2016.csv$Visitor[i]
    NHL2016.csv$Loser[i] <- NHL2016.csv$Home[i]
  }
  else if(NHL2016.csv$G.1[i] > NHL2016.csv$G[i]){
    NHL2016.csv$Winner[i] <- NHL2016.csv$Home[i]
    NHL2016.csv$Loser[i] <- NHL2016.csv$Visitor[i]
  }
}

for(i in 1:dim(NHL2017.csv)){
  if(NHL2017.csv$G[i] > NHL2017.csv$G.1[i]){
    NHL2017.csv$Winner[i] <- NHL2017.csv$Visitor[i]
    NHL2017.csv$Loser[i] <- NHL2017.csv$Home[i]
  }
  else if(NHL2017.csv$G.1[i] > NHL2017.csv$G[i]){
    NHL2017.csv$Winner[i] <- NHL2017.csv$Home[i]
    NHL2017.csv$Loser[i] <- NHL2017.csv$Visitor[i]
  }
}


for(i in 1:dim(NHL2018.csv)){
  if(NHL2018.csv$G[i] > NHL2018.csv$G.1[i]){
    NHL2018.csv$Winner[i] <- NHL2018.csv$Visitor[i]
    NHL2018.csv$Loser[i] <- NHL2018.csv$Home[i]
  }
  else if(NHL2018.csv$G.1[i] > NHL2018.csv$G[i]){
    NHL2018.csv$Winner[i] <- NHL2018.csv$Home[i]
    NHL2018.csv$Loser[i] <- NHL2018.csv$Visitor[i]
  }
}


for(i in 1:dim(NHL2019.csv)){
  if(NHL2019.csv$G[i] > NHL2019.csv$G.1[i]){
    NHL2019.csv$Winner[i] <- NHL2019.csv$Visitor[i]
    NHL2019.csv$Loser[i] <- NHL2019.csv$Home[i]
  }
  else if(NHL2019.csv$G.1[i] > NHL2019.csv$G[i]){
    NHL2019.csv$Winner[i] <- NHL2019.csv$Home[i]
    NHL2019.csv$Loser[i] <- NHL2019.csv$Visitor[i]
  }
}



# 4. ELO functions required for calculation -------------------------------

# We use unique function to determine the number of unique teams that played each season
# We store the team names in teams.char
# We then use teams.rating in a for loop to convert them all to a corresponding value of 1000
# The 1000 value is the initial rating we are giving all of the teams
teams.char <-(unique(NHL2018.csv$Home))  # Used the teams of the 2018 season
teams.char <- sort(teams.char)  # We want them to be ordered alphabetically
teams.rating <-(unique(NHL2018.csv$Home))
for(i in 1:length(teams.rating)){  # a for loop that applies a value of 1000 to
  teams.rating[i] = 1000            # the length(teams)
}                                  # loop is a bit unnecessary but it works

# We then bind the two vectors together - teams.char and teams.rating
# This gives us all 31 teams with a numeric value of 1000
teams.char <- as.character(teams.char)
teams.table <- cbind(teams.char, teams.rating)
teams.table <- data.frame(teams.table, stringsAsFactors = F)
teams.table$teams.rating <- as.numeric(teams.table$teams.rating)


getRating <- function(team){
  get.rating <- teams.table$teams.rating
  names(get.rating) <- teams.table$teams.char
  teamrating <- (get.rating[team])
}


elo.calculation <- function(Winner, Loser, k) {
  
  # Expected score for player A and for player B.
  EVWinner <- (1 / (1 + 10^((Loser - Winner)/400)))
  EVLoser <- (1 / (1 + 10^((Winner - Loser)/400)))
  
  # Calculating change in rating if win or lose
  UpdatedWinner <- Winner + k * (1 - EVWinner)
  
  # Do the same for team2
  UpdatedLoser<- Loser + ((0-EVLoser)* k)
  
  # prob is the expected score column giving probabilities for winning
  prob <- (data.frame(prob=c(EVWinner,EVLoser)) * 100)
  # Win 1 shows the updated ratings should Team1 win
  NewWinnerRating <- (data.frame(WinnerRating=c(UpdatedWinner)))
  # Likewise for team 2
  NewLoserRating <- (data.frame(LoserRating=c(UpdatedLoser)))
  
  dattable <- cbind(NewWinnerRating,NewLoserRating)
  rownames(dattable) <- c('Updated Ratings')
  
  NewWinner.temp <<- as.numeric(NewWinnerRating)  # saves as a global variable
  # to be used to store the ratings
  NewLoser.temp <<- as.numeric(NewLoserRating)    # in our teams.table
  return(dattable)                                # The .temps will be overwritten on each iteration
}


ratings.update.func <- function(Winner, Loser){
  Winner.name <<- Winner
  Winner.name <<- trimws(capture.output(Winner.name))
  Loser.name <<- Loser
  Loser.name <<- trimws(capture.output(Loser.name))
  teams.table <<- within(teams.table, teams.rating[teams.char == Winner.name[1]] <- NewWinner.temp)
  teams.table <<- within(teams.table, teams.rating[teams.char == Loser.name[1]] <- NewLoser.temp)
  teams.table$teams.rating <<- as.numeric(teams.table$teams.rating)
}

total.elo.calculation <- function(Winner, Loser, k){
  elo.calculation(Winner, Loser, k)
  ratings.update.func(Winner, Loser)
}




# 5. ELO Model Testing ----------------------------------------------------

# We then bind the two vectors together - teams.char and teams.rating
# This gives us all 31 teams with a numeric value of 1000
teams.char <- as.character(teams.char)
teams.table <- cbind(teams.char, teams.rating)
teams.table <- data.frame(teams.table, stringsAsFactors = F)
teams.table$teams.rating <- as.numeric(teams.table$teams.rating)




for (j in 1:nrow(NHL2006.csv)){
  total.elo.calculation(getRating(NHL2006.csv[j,10]),(getRating(NHL2006.csv[j,11])),32)
}

for (j in 1:nrow(NHL2007.csv)){
  total.elo.calculation(getRating(NHL2007.csv[j,10]),(getRating(NHL2007.csv[j,11])),32)
}


for (j in 1:nrow(NHL2008.csv)){
  total.elo.calculation(getRating(NHL2008.csv[j,10]),(getRating(NHL2008.csv[j,11])),32)
}

for (j in 1:nrow(NHL2009.csv)){
  total.elo.calculation(getRating(NHL2009.csv[j,10]),(getRating(NHL2009.csv[j,11])),32)
}

for (j in 1:nrow(NHL2010.csv)){
  total.elo.calculation(getRating(NHL2010.csv[j,10]),(getRating(NHL2010.csv[j,11])),32)
}

for (j in 1:nrow(NHL2011.csv)){
  total.elo.calculation(getRating(NHL2011.csv[j,10]),(getRating(NHL2011.csv[j,11])),32)
}

for (j in 1:nrow(NHL2012.csv)){
  total.elo.calculation(getRating(NHL2012.csv[j,10]),(getRating(NHL2012.csv[j,11])),32)
}

for (j in 1:nrow(NHL2013.csv)){
  total.elo.calculation(getRating(NHL2013.csv[j,10]),(getRating(NHL2013.csv[j,11])),32)
}

for (j in 1:nrow(NHL2014.csv)){
  total.elo.calculation(getRating(NHL2014.csv[j,10]),(getRating(NHL2014.csv[j,11])),32)
}

for (j in 1:nrow(NHL2015.csv)){
  total.elo.calculation(getRating(NHL2015.csv[j,10]),(getRating(NHL2015.csv[j,11])),32)
}

for (j in 1:nrow(NHL2016.csv)){
  total.elo.calculation(getRating(NHL2016.csv[j,10]),(getRating(NHL2016.csv[j,11])),32)
}

for (j in 1:nrow(NHL2017.csv)){
  total.elo.calculation(getRating(NHL2017.csv[j,10]),(getRating(NHL2017.csv[j,11])),32)
}

for (j in 1:nrow(NHL2018.csv)){
  total.elo.calculation(getRating(NHL2018.csv[j,10]),(getRating(NHL2018.csv[j,11])),32)
}

for (j in 1:nrow(NHL2019.csv)){
  total.elo.calculation(getRating(NHL2019.csv[j,10]),(getRating(NHL2019.csv[j,11])),32)
}

