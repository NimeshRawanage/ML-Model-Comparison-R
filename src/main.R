# ============================
# Main Execution Script
# ============================

source("src/preprocess.R")  # Data Preprocessing
source("src/train_knn.R")   # Train KNN
source("src/train_rf.R")    # Train Random Forest
source("src/train_svm.R")   # Train SVM
source("src/evaluate.R")    # Evaluate models
source("src/visualize.R")   # Generate graphs

cat("✅ All scripts executed successfully!\n")
