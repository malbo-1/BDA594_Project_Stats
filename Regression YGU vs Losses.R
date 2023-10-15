# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "YGU" (Yards Given Up) and "Losses" (Total Losses) columns
YGU <- df$YGU
Losses <- df$Losses
plot(YGU, Losses, pch = 16, cex = 1, col = "red",
     main = "Total Yards Given Up vs Total Losses",
     xlab = "Total Yards Given Up", ylab = "Total Losses")

# Summary Regression Statistics
model <- lm(Losses ~ YGU)
summary(model) # Multiple R-squared =  ,	Adjusted R-squared = 
# p-value:  ( than 0.05)
# Line of Best Fit
abline(model)

