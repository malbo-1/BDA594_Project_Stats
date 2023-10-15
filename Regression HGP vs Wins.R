# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "HGP" (Home Games Played) and "Wins" (Total Wins) columns
HGP  <- df$HGP
Wins <- df$Wins

plot(HGP, Wins, pch = 16, cex = 1, col = "red",
     main ="Home Games Played vs Total Wins",
     xlab ="Home Games Played", ylab="Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ HGP)
summary(model)
# Line of Best Fit
abline(model)

