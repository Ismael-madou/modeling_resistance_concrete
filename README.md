# 🧱 Modeling the Compressive Strength of Concrete

> 📅 April 11, 2025  
> 🎓 Academic Project – Advanced Regression & High-Dimensional Modeling (R)

---

## 📌 Project Summary

This project investigates the **factors influencing the compressive strength of concrete**, using a dataset of 1030 experimental observations. It applies:

- 🧪 **Exploratory Data Analysis (EDA)**
- 📈 **Linear Regression with interaction terms**
- 🧠 **High-dimensional methods**: Ridge and Lasso regressions
- 🧮 **PCA (Principal Component Analysis)** for dimensionality understanding

The objective is to **predict and interpret** how various ingredients (cement, water, additives, aggregates, age) affect the performance of concrete.

---

## 📁 Repository Structure

```bash
modeling_resistance_concrete/
├── Data/                       # Raw and cleaned datasets
├── Files/                      # Documentation (PDFs, text notes)
├── R/                          # R scripts for cleaning, PCA, regression
├── regression_grande_dimension/ # Final scripts for high-dimensional modeling
├── Presentation.docx           # Presentation file
├── regression_grande_dimension.Rproj # RStudio project file
├── .gitignore
└── README.md                   # This file




---

## 📊 Variables

| Variable          | Description                                |
|-------------------|--------------------------------------------|
| cement            | Quantity of cement (kg/m³)                 |
| blast_furnace     | Blast furnace slag (kg/m³)                 |
| fly_ash           | Fly ash (kg/m³)                            |
| water             | Water content (kg/m³)                      |
| super_plast       | Superplasticizer (kg/m³)                   |
| coarse            | Coarse aggregate (kg/m³)                   |
| fine_aggr         | Fine aggregate (kg/m³)                     |
| age               | Concrete age (days)                        |
| y_concrete_compresive | Compressive strength (MPa)            |

➡️ Final dataset: **961 cleaned observations**

---

## 🔍 Methodology

### 1. Data Cleaning
- Outlier filtering via IQR method
- Visual checks with boxplots
- Handling multicollinearity using correlation matrix

### 2. Exploratory Analysis
- Univariate & bivariate visualizations
- Pearson/Kendall/Spearman correlation tests
- PCA to analyze variable interactions

### 3. Linear Regression
- Full model + backward selection via AIC/BIC
- Interactions (e.g., `age × cement`, `super_plast × water`)
- Non-linear terms (e.g., `water²`)
- Cross-validation (10-fold) to compare model performance

### 4. Regularized Models
- Ridge regression for stability
- Lasso regression for variable selection
- Interpretation of regularization paths

---

## 📈 Key Findings

- 🔹 **Adjusted R²** (final model): `0.7768`
- 🔹 **CV Error** reduced from `109.48` → `64.56` with interactions
- ✅ Most significant predictors:
  - `cement`, `age`, `water`, `super_plast`, `blast_furnace`, `fly_ash`
- 🔀 Important interactions:
  - `age × cement`, `age × fly_ash`, `water × super_plast`, `water²`

---

## 📌 PCA Insights

- **Dimension 1**: Water vs Superplasticizer  
- **Dimension 2**: Cement vs Fly ash & Fine aggregates  
- **Dimension 3**: Blast furnace slag vs Coarse aggregates  

🎯 These PCA axes helped to design interaction terms in the regression.

---

## 🧑‍💻 How to Run the Code

1. Open the `.Rproj` file in RStudio
2. Install required packages:
```R
install.packages(c("tidyverse", "FactoMineR", "glmnet", "caret"))
