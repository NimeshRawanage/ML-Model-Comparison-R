# Predictive Analysis of the Wisconsin Dataset
  
A Comparative Study of Random Forest, K-Nearest Neighbours, and Support Vector Machines  

-------------------------

## Project Overview  

This project presents a comparative analysis of three popular machine learning models—Random Forest (RF), K-Nearest Neighbours (KNN), and Support Vector Machines (SVM)—using the Wisconsin Breast Cancer Dataset. The goal is to determine which model provides the highest prediction accuracy for breast cancer diagnosis.  

-------------------------

## Project Structure  

ML-Model-Comparison-R/  
├── data/                # Contains the dataset (wisconsin.csv)  
├── models/              # Stores trained model files (e.g., knn_model.RData)  
├── results/             # Stores evaluation results and plots  
├── src/                 # Source code folder  
│   ├── preprocess.R     # Data Preprocessing  
│   ├── train_knn.R      # KNN Model Training  
│   ├── train_rf.R       # Random Forest Model Training  
│   ├── train_svm.R      # SVM Model Training  
│   ├── evaluate.R       # Model Evaluation and Metrics  
│   ├── visualize.R      # Data Visualization  
│   ├── main.R           # Master Script (Runs all steps)  
├── README.md            # Project documentation  
├── LICENSE              # Open-source license  
  

-------------------------

## Dataset Information
  
- **Dataset Name:** Wisconsin Breast Cancer Dataset  
- **Source:** [Kaggle Dataset](https://www.kaggle.com/datasets/uciml/breast-cancer-wisconsin-data)  
- **License:** CC BY-NC-SA 4.0    

-------------------------

## Machine Learning Models 
 
- **Random Forest (RF):** Ensemble method using 100 decision trees.  
- **K-Nearest Neighbours (KNN):** Implemented with `k=5` neighbors.  
- **Support Vector Machines (SVM):** Default hyperparameters with a linear kernel.  

-------------------------

## How to Run This Project  

### Prerequisites 
 
- R installed (version >= 4.0)  
- Required libraries: `ggplot2`, `caret`, `randomForest`, `class`, `e1071`, `dplyr`  

### Clone and Set Up the Repository  

git clone https://github.com/NimeshRawanage/ML-Model-Comparison-R.git  
cd ML-Model-Comparison-R  

### Install Required R Packages
  
install.packages(c("ggplot2", "caret", "randomForest", "e1071", "class", "dplyr"))  

### Run the Project  

source("src/main.R")  

-------------------------

## Future Improvements 
 
- Implement hyperparameter tuning for all models.  
- Introduce additional machine learning algorithms for comparison.  
- Develop a web-based interface using Shiny for interactive model testing.  

-------------------------

## License  

This project is licensed under the MIT License. See the LICENSE file for details.  

-------------------------

## Author  

**Nimesh Rawanage**  
- GitHub: https://github.com/NimeshRawanage  
- LinkedIn: https://www.linkedin.com/in/nimeshrawanage/  

-------------------------

