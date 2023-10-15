# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "ARYPG" (Average Rushing Yards Per Game)
# and "Wins" (Total Wins) columns
ARYPG <- df$ARYPG
Wins <- df$Wins
plot(ARYPG, Wins, pch = 16, cex = 1, col = "red",
     main = "Average Rushing Yards Per Game vs Total Wins",
     xlab = "Average Rushing Yards Per Game", ylab = "Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ ARYPG)
summary(model) # Multiple R-squared =  0.01694,	Adjusted R-squared = -0.05327 
#p-value: 0.6309 (LARGER than 0.05)

# Line of Best Fit
abline(model)
