# Assuming your data is stored in a data frame called 'df'

# Load required libraries
library(dplyr)
library(ggplot2)
library(readr)

#read
df <- read_csv("drug-use-by-age.csv")
print(names(df))
# Convert "age" to numeric
df$age <- as.numeric(df$age)

# Summary statistics
summary(df)

# Check for missing values
sum(is.na(df))

# Explore the distribution of age
ggplot(df, aes(x = age)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Frequency")

# Explore alcohol use and frequency
ggplot(df, aes(x = alcohol_use, y = alcohol_frequency)) +
  geom_point() +
  labs(title = "Alcohol Use vs. Frequency",
       x = "Alcohol Use",
       y = "Alcohol Frequency")

# Explore marijuana use and frequency
ggplot(df, aes(x = marijuana_use, y = marijuana_frequency)) +
  geom_point() +
  labs(title = "Marijuana Use vs. Frequency",
       x = "Marijuana Use",
       y = "Marijuana Frequency")