# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)


# Plot between "HGW" (Home Games Won) and "Wins" (Total Wins) columns
HGW  <- df$HGW
Wins <- df$Wins

plot(HGW, Wins, pch = 16, cex = 1, col = "red",
     main ="Home Games Won vs Total Wins",
     xlab ="Home Games Won", ylab="Total Wins")


# Summary Regression Statistics
model <- lm(Wins ~ HGW)
summary(model)  # Multiple R-Squared = ; # Adjusted R-squared =  
# p-value:  (SMALLER than )

# Line of Best Fit
abline(model)
