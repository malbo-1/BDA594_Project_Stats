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
summary(model)  # Multiple R-Squared = 0.06001; # Adjusted R-squared = -0.007133
# P-value =  0.3605 (LARGER THAN 0.05)

# Line of Best Fit
abline(model)

