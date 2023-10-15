# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

#Plot pairs of data: HGW, APPG, AYPG, Wins
pairs(df[,c(6,9,4,11)])
APPG <- df$APPG
AYPG <- df$AYPG
HGW  <- df$HGW
Wins <- df$Wins
# Summary Regression Statistics
model <- lm(Wins~APPG+AYPG+HGW)
summary(model)# Multiple R-Squared = 0.8814; Adjusted R-squared = 0.8517 
