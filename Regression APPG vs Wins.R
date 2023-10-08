# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)


# Plot between "APPG" (Average Points Per Game) and "Wins" (Total Wins) columns
APPG <- df$APPG
Wins <- df$Wins
plot(APPG, Wins, pch = 16, cex = 1, col = "blue",
     main ="Average Points Per Game vs Total Wins",
     xlab = "Average Points Per Game", ylab = "Total Wins")


# Summary Regression Statistics
model <- lm(Wins ~ APPG)
summary(model)  # Multiple R-Squared = 0.7396; # Adjusted R-squared = 0.7209 

# Line of Best Fit
abline(model)
