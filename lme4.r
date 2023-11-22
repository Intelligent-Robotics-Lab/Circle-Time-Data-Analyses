# Install and load necessary libraries
install.packages("lme4")
library(lme4)

# Load data
df <- read.csv("CircleTimeData.csv")
str(df)
head(df)

# Fit a mixed-effects model
model <- lmer(Affect_Positive ~ Condition * time + (1 | Subject), data = df)

# Print the summary of the model
summary(model)
