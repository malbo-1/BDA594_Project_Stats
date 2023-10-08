# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "TO" (Turnovers Lost) and "Losses" (Total Losses) columns
TO <- df$TO
Losses <- df$Losses
plot(TO, Losses, pch = 16, cex = 1, col = "blue",
     main = "Turnovers Lost vs Total Losses",
     xlab = "Turnovers", ylab = "Total Losses")

# Summary Regression Statistics
model <- lm(Losses ~ TO)
summary(model) # Multiple R-squared =  0.6698,	Adjusted R-squared =  0.6463

# Line of Best Fit
abline(model)
