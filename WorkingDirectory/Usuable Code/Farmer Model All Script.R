# RESET THE TABLE
teams.char <- as.character(teams.char)
teams.table <- cbind(teams.char, teams.rating)
teams.table <- data.frame(teams.table, stringsAsFactors = F)
teams.table$teams.rating <- as.numeric(teams.table$teams.rating)
# Just a test that this works, this gives the rating of the team i



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
