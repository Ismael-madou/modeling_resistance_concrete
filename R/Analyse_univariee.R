#Analyse univariée ----

# Installer et charger le package corrplot
install.packages("readxl")
install.packages("corrplot")
library(readxl)
library(corrplot)




# Charger les données ( Verifier si on se trouve bien dans le repertoire juste avant "Data")
bdd <- read_excel("Data/Concrete_Data.xls")
