#Analyse univariée ----

# Installer et charger les package
install.packages("readxl")
install.packages("corrplot")
library(readxl)
library(corrplot)




# Charger les données ( Verifier si on se trouve bien dans le repertoire juste avant "Data")
bdd <- read_excel("Data/Concrete_Data.xls")


head(bdd,5)
colnames(bdd)

summary(bdd$`Concrete compressive strength(MPa, megapascals)`)
