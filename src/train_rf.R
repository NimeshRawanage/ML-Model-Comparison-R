# ============================
# Random Forest Training
# ============================

# Load required library
library(randomForest)

# Train a Random Forest model
rf_model <- randomForest(Class ~ ., data = train_data, ntree = 100)

# Save the trained model
save(rf_model, file = "models/rf_model.RData")

# Print completion message
cat("✅ Random Forest Model Trained and Saved!\n")
