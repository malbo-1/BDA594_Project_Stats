# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "Time.Of.Pos" (Time of Possession (rounded minutes))
# and "Wins" (Total Wins) columns
Time.Of.Pos <- df$Time.of.Pos
Wins <- df$Wins
plot(Time.Of.Pos, Wins, pch = 16, cex = 1, col = "blue",
     main = "Total Time of Possession vs Total Wins",
     xlab = "Total Time of Possession", ylab = "Total Wins")

# Summary Regression Statistics
model <- lm(Wins ~ Time.Of.Pos)
summary(model) # Multiple R-squared =  0.05565,	Adjusted R-squared = -0.0118 
#p-value: 0.3791 (LARGER than 0.05)

# Line of Best Fit
abline(model)
