# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "TY" (Total Yards) and "Wins" (Total Wins) columns
TY <- df$TY
Wins <- df$Wins
plot(TY, Wins, pch = 16, cex = 1, col = "red",
     main = "Total Yards vs Total Wins",
     xlab = "Total Yards", ylab = "Total Wins")


# Summary Regression Statistics
model <- lm(Wins ~ TY)
summary(model) # Multiple R-squared = 0.3552,	Adjusted R-squared = 0.3092 
# p-value: 0.01483 (SMALLER than 0.05)
# Line of Best Fit
abline(model)
