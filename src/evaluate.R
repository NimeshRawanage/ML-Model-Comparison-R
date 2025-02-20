# ============================
# Model Evaluation & Metrics
# ============================

# Load required libraries
library(caret)

# Load trained models
load("models/knn_model.RData")
load("models/rf_model.RData")
load("models/svm_model.RData")

# Define function to evaluate model performance
evaluate_model <- function(model, model_type, test_data) {
  predictions <- predict(model, newdata = test_data)
  cm <- confusionMatrix(predictions, test_data$Class)
  return(cm)
}

# Evaluate models
cm_rf <- evaluate_model(rf_model, "rf", test_data)
cm_svm <- evaluate_model(svm_model, "svm", test_data)

# KNN requires a different approach for prediction
knn_predictions <- knn(train = knn_model$train_x, 
                       test = test_data[, -which(names(test_data) == "Class")], 
                       cl = knn_model$train_y, 
                       k = knn_model$k)
cm_knn <- confusionMatrix(knn_predictions, test_data$Class)

# Print performance results
print(cm_rf)
print(cm_knn)
print(cm_svm)

# Save results (optional)
save(cm_rf, cm_knn, cm_svm, file = "results/evaluation_metrics.RData")

cat("✅ Model Evaluation Completed!\n")
