#Analyse univariée ----

# Installer et charger le package corrplot
install.packages("readxl")
install.packages("corrplot")
library(readxl)
library(corrplot)
library(ggplot2)

# Charger les données ( Verifier si on se trouve bien dans le repertoire juste avant "Data")
# fichier changé avec le cemin de base : "Data/Concrete_Data.xls"
bdd <- read_excel("regression_grande_dimension/Data/Concrete_Data.xls")


#reecriture des variables pour faciliter l'etude
names(bdd) <- c('cement',
                'blast_furnace',
                'fly_ash',
                'water',
                'super_plast',
                'coarse',
                'fine_aggr',
                'age',
                'y_concrete_compresive')

#il n'y a que des variables numérique
str(bdd)

#analyse variable à expliquer ( y_concrete_compressive) :
#distribution
boite_moust <- ggplot(bdd, aes_string(y= bdd$y_concrete_compresive)) +
  geom_boxplot(fill = "lightgreen", color = "darkgreen", alpha = 0.7) + 
  geom_hline(yintercept = mean(bdd$y_concrete_compresive), color = "red", linetype = "dashed") +
  labs(title = paste("Boxplot de", bdd$y_concrete_compresive), x = bdd$y_concrete_compresive, y = "") 

#*Distribution de la variable à expliqué correcte, il n'y a que 3
#* Valeurs qui dépassent les lignes de la boites
#* Il n'y a pas un tres gros écart entre la médiane et la moyenne
#* ==> ccl :Tres bonne distribution pour faire une étude

