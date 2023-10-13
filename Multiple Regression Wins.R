# Read in and View Data
df<-read.csv("Data\\Correct_Data.csv")
View(df)
# Summary Regression Statistics
APYPG       <- df$APYPG       # Average Passing Yards Per Game
APPG        <- df$APPG        # Average Points Per Game
ARYPG       <- df$ARYPG       # Average Rushing Yards Per Game
AYPG        <- df$AYPG        # Average Yards Per Game
HGW         <- df$HGW         # Home Games Won
PY          <- df$PY          # Total Passing Yards 
RY          <- df$RY          # Total Rushing Yards
Time.Of.Pos <- df$Time.of.Pos # Total Time of Possession
TY          <- df$TY          # Total Yards
Wins        <- df$Wins        # Total Wins

model <- lm(Wins~APYPG+APPG+ARYPG+AYPG+HGW+PY+RY+Time.Of.Pos+TY)
summary(model) # Multiple R-Squared = 0.896; Adjusted R-squared = 0.74 
# p-value: 0.02276 (SMALLER than 0.05)
