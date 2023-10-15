# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)
# Plot between "PY" (Total Passing Yards) and "Wins" (Total Wins) columns
PY <- df$PY
Wins <- df$Wins
plot(PY, Wins, pch = 16, cex = 1, col = "red",
     main = "Total Passing Yards vs Total Wins",
     xlab = "Total Passing Yards", ylab = "Total Wins")


# Summary Regression Statistics
model <- lm(Wins ~ PY)
summary(model) # Multiple R-squared = ,	Adjusted R-squared =  
#p-value:  ( than 0.05)


# Line of Best Fit
abline(model)
