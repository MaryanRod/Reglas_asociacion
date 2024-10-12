library(dplyr)
personas<-read.csv("BASE_PERSONAS.csv")

personas[is.na(personas)] <- 0

library(arules)

reglas <- apriori(personas, parameter = list(support=0.2, confidence=0.5))
personas <- personas[,-3]

inspect(reglas[0:100])
inspect(reglas[1100:1200])














