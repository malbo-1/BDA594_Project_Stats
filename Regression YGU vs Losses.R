# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "YGU" (Yards Given Up) and "Losses" (Total Losses) columns
YGU <- df$YGU
Losses <- df$Losses
plot(YGU, Losses, pch = 16, cex = 1, col = "blue",
     main = "Total Yards Given Up vs Total Losses",
     xlab = "Total Yards Given Up", ylab = "Total Losses")

# Summary Regression Statistics
model <- lm(Losses ~ YGU)
summary(model) # Multiple R-squared =  0.00963,	Adjusted R-squared =  -0.06111
# p-value: 0.7177 (LARGER than 0.05)
# Line of Best Fit
abline(model)
