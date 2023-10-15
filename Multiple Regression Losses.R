# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)
# Summary Regression Statistics
HGL    <- df$HGL    # Home Games Lost
TO     <- df$TO     # Turnovers Lost
YGU    <- df$YGU    # Total Yards Given Up
Losses <- df$Losses # Total Losses

model <- lm(Losses~HGL+TO+YGU)
summary(model)# Multiple R-Squared = ; Adjusted R-squared =  
# p-value:  ( than 0.05)
