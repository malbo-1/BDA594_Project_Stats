# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)
# Summary Regression Statistics
HGL    <- df$HGL    # Home Games Lost
TO     <- df$TO     # Turnovers Lost
YGU    <- df$YGU    # Total Yards Given Up
Losses <- df$Losses # Total Losses

model <- lm(Losses~HGL+TO+YGU)
summary(model)# Multiple R-Squared = 0.814; Adjusted R-squared =  0.7676 
# p-value:  0.0001111 (SMALLER than 0.05)
