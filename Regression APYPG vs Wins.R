# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "ARYPG" (Average Passing Yards Per Game)
# and "Wins" (Total Wins) columns
APYPG <- df$APYPG
Wins <- df$Wins
plot(APYPG, Wins, pch = 16, cex = 1, col = "blue",
     main = "Average Passing Yards Per Game vs Total Wins",
     xlab = "Average Passing Yards Per Game", ylab = "Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ APYPG)
summary(model) # Multiple R-squared = 0.1587,	Adjusted R-squared = 0.09865
# p-value: 0.1264 (LARGER than 0.05)

# Line of Best Fit
abline(model)
