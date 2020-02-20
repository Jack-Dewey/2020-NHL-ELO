#Name: Michael Lee and Jack Dewey
#Date: 19/02/20
#Title: Final Project Main and Pathways
#
#Description: This script contains all of our pathways and any main codes we
#require for our project
#
#Index :
# 1. Main Codes
# 2. Directory Creation
# 3. Pathways


#--------------------------------- 1. Main Codes -------------------------------

#We get our working directory here
NHLwd <- getwd()


#We set our wd as the Seasons folder
setwd(paste(NHLwd, "/", "Seasons", "/", sep = ""))

#Chooses which files to load
nhl.seasons <- list.files(pattern="*.csv")

#Forloop to load the NHL seasons csv files 2006-2019
for (i in 1:length(nhl.seasons)) assign(nhl.seasons[i], 
                                        read.csv(nhl.seasons[i],
                                                 stringsAsFactors = F))

#We identify the different teams in the league
teams <- unique(NHL2006.csv$Home)

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



#--------------------------------- 2. Directory Creation -----------------------

dir.create("Seasons")




#--------------------------------- 3. Pathways ---------------------------------

#Pathway to our seasons folder
Seasons.Path <- paste(NHLwd, "/", "Seasons", "/", sep = "")
