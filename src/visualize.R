# ============================
# Visualization of Results
# ============================

# Load required libraries
library(ggplot2)

# Load evaluation results
load("results/evaluation_metrics.RData")

# Extract accuracy values
accuracies <- data.frame(
  Model = c("Random Forest", "KNN", "SVM"),
  Accuracy = c(cm_rf$overall["Accuracy"], cm_knn$overall["Accuracy"], cm_svm$overall["Accuracy"])
)

# Bar plot for model accuracy comparison
ggplot(accuracies, aes(x = Model, y = Accuracy, fill = Model)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = round(Accuracy, 3)), vjust = -0.5) +
  theme_minimal() +
  labs(title = "Model Accuracy Comparison", y = "Accuracy", x = "Model")

# Save plot (optional)
ggsave("results/accuracy_comparison.png")

cat("✅ Visualization Completed!\n")
