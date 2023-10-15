# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)

# Plot between "HGL" (Home Games Lost) and "Losses" (Total Losses) columns
HGL <- df$HGL
Losses <- df$Losses
plot(HGL, Losses, pch = 16, cex = 1, col = "red",
     main = "Home Games Lost vs Total Losses",
     xlab = "Home Games Lost", ylab = "Total Losses")


# Summary Regression Statistics
model <- lm(Losses ~ HGL)
summary(model) # Multiple R-squared = ,	Adjusted R-squared =  
#p-value:  ( than 0.05)

# Line of Best Fit
abline(model)
