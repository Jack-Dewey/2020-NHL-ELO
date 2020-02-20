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




#--------------------------------- 2. Directory Creation -----------------------

dir.create("Seasons")




#--------------------------------- 3. Pathways ---------------------------------

#Pathway to our seasons folder
Seasons.Path <- paste(NHLwd, "/", "Seasons", "/", sep = "")
