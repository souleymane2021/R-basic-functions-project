# Mini-projet : Fonctions de base en R
# Auteur : Souleymane Daouda
# Objectif : Découvrir les fonctions de base de R à travers une analyse descriptive

# 1. Création d’un jeu de données simulé
set.seed(123)
age <- sample(18:60, 20, replace = TRUE)
revenu <- sample(150000:900000, 20, replace = TRUE)
sexe <- sample(c("Homme", "Femme"), 20, replace = TRUE)

donnees <- data.frame(age, revenu, sexe)

# 2. Aperçu du jeu de données
head(donnees)
str(donnees)
summary(donnees)

# 3. Quelques statistiques de base
mean(age)
median(revenu)
table(sexe)

# 4. Tri et filtrage
donnees_tries <- donnees[order(donnees$revenu, decreasing = TRUE), ]
donnees_hommes <- subset(donnees, sexe == "Homme")

# 5. Petites visualisations basiques
hist(donnees$revenu, main = "Distribution des revenus", col = "lightblue", xlab = "Revenu")
boxplot(revenu ~ sexe, data = donnees, col = c("orange", "lightgreen"), main = "Revenu par sexe")

# Fin du mini-projet
