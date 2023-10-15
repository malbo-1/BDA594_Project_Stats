# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)


# Plot between "APPG" (Average Points Per Game) and "Wins" (Total Wins) columns
APPG <- df$APPG
Wins <- df$Wins
plot(APPG, Wins, pch = 16, cex = 1, col = "red",
     main ="Average Points Per Game vs Total Wins",
     xlab = "Average Points Per Game", ylab = "Total Wins")


# Summary Regression Statistics
model <- lm(Wins ~ APPG)
summary(model)  # Multiple R-Squared = 0.6744; # Adjusted R-squared = 0.6511 
# p-value: 9.621e-05 (SMALLER than 0.05)

# Line of Best Fit
abline(model)
