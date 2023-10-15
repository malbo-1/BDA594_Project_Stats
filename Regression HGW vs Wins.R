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
summary(model)  # Multiple R-Squared =  0.7615; # Adjusted R-squared =  0.7445 
# p-value:  1.034e-05 (SMALLER than 0.05)

# Line of Best Fit
abline(model)
