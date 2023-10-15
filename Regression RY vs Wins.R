# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)
# Plot between "RY" (Total Rushing Yards) and "Wins" (Total Wins) columns
RY <- df$RY
Wins <- df$Wins
plot(RY, Wins, pch = 16, cex = 1, col = "red",
     main = "Total Rushing Yards vs Total Wins",
     xlab = "Total Rushing Yards", ylab = "Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ RY)
summary(model) # Multiple R-squared = 0.0188,	Adjusted R-squared = -0.05129 
# p-value: 0.6126 (LARGER than 0.05)

# Line of Best Fit
abline(model)
