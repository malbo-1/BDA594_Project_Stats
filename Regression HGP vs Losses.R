# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "HGP" (Home Games Played) and "Losses" (Total Losses) columns
HGP    <- df$HGP
Losses <- df$Losses

plot(HGP, Losses, pch = 16, cex = 1, col = "blue",
     main ="Home Games Played vs Total Losses",
     xlab ="Home Games Played", ylab="Total Losses")

# Summary Regression Statistics
model <- lm(Losses ~ HGP)
summary(model)  # Multiple R-Squared = 0.03776; # Adjusted R-squared = -0.03097

# Line of Best Fit
abline(model)

