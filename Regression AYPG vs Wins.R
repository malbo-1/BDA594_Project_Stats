# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)


# Plot between "AYPG" (Average Yards Per Game) and "Wins" (Total Wins) columns
AYPG <- df$AYPG
Wins <- df$Wins
plot(AYPG, Wins, pch = 16, cex = 1, col = "red",
     main = "Average Yards Per Game vs Total Wins",
     xlab = "Average Yards Per Game", ylab = "Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ AYPG)
summary(model) # Multiple R-Squared = 0.3511; # Adjusted R-squared = 0.3047 
# p-value: 0.01558 (SMALLER than 0.05)

# Line of Best Fit
abline(model)

