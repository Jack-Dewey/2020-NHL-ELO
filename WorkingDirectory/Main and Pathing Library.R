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



