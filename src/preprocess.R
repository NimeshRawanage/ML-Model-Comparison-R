# ============================
# Data Preprocessing Script
# ============================

# Load required libraries
library(ggplot2)
library(caret)
library(dplyr)

# Load the dataset (Ensure the dataset file is in the 'data/' folder)
data <- read.csv("data/wisconsin.csv", stringsAsFactors = FALSE)

# Display basic structure and summary
str(data)
summary(data)

# Identify missing values in the dataset
missing_values_per_variable <- colSums(is.na(data))
print(missing_values_per_variable)

# Handle missing values: Impute with the median of the column
data$Bare.nuclei[is.na(data$Bare.nuclei)] <- median(data$Bare.nuclei, na.rm = TRUE)

# Convert categorical variables
data$Class <- factor(data$Class, levels = c("benign", "malignant"))

# Split dataset into training and testing sets (80% Train, 20% Test)
set.seed(123) # For reproducibility
splitIndex <- createDataPartition(data$Class, p = 0.8, list = FALSE)
train_data <- data[splitIndex, ]
test_data <- data[-splitIndex, ]

# Save processed data (optional, for debugging)
write.csv(train_data, "data/train_data.csv", row.names = FALSE)
write.csv(test_data, "data/test_data.csv", row.names = FALSE)

# Print completion message
cat("✅ Data Preprocessing Completed!\n")
