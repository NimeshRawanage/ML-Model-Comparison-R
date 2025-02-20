# ============================
# K-Nearest Neighbors Training
# ============================

# Load required library
library(class)

# Define KNN training function
train_knn <- function(train_data, k = 5) {
  train_x <- train_data[, -which(names(train_data) == "Class")]
  train_y <- train_data$Class
  list(train_x = train_x, train_y = train_y, k = k)
}

# Train the KNN model with k=5
knn_model <- train_knn(train_data, k = 5)

# Save the trained model (for reproducibility)
save(knn_model, file = "models/knn_model.RData")

# Print completion message
cat("✅ KNN Model Trained and Saved!\n")
