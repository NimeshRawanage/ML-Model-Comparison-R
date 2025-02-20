# ============================
# Support Vector Machine Training
# ============================

# Load required library
library(e1071)

# Train the SVM model
svm_model <- svm(Class ~ ., data = train_data)

# Save the trained model
save(svm_model, file = "models/svm_model.RData")

# Print completion message
cat("✅ SVM Model Trained and Saved!\n")
