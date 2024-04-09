library(ggplot2)
library(tidyverse)


# ========================================================
# a)
# ========================================================
# Narišite graf in komentirajte, ali se iz njega vidi
# kakšen trend ali sezonskost.

data = read.table("Podatki.txt", header=FALSE)


# Time series object

# Time series plot
theme_set(theme_bw())
theme_update(plot.title = element_text(face = "bold",
                                          hjust = 0.5),
                panel.grid.major = element_blank(), 
                panel.grid.minor = element_blank())

ggplot(data, aes(x = 1:nrow(data), y = V1)) +
  geom_line(color = "blue") +
  labs(x = "Index", y = "Data", title = "Plot of Data from File")

# Iz slike se morda lahko opazi rahel linearen trend, vse
# skupaj se namreč počasi dviga. Glede sezonskosti vidimo,
# da podatki nekako nihajo, recimo da na vsak 10. indeks.


# ========================================================
# b)
# ========================================================
# Odstranite morebiten trend in sezonskost z metodami,
# uporabljenimi pri tečaju: (zaporedno) diferenciranje,
# logaritmiranje, neposredna ocena sezonskih komponent,
# polinomski trend stopnje največ 3 ali prileganje
# periodične funkcije (ali kakšna kombinacija teh metod).
# Ni dovoljena uporaba naprednih R-ovih ukazov, kakršna
# sta stl ali decompose. Potem ko odstranite morebiten
# trend, narišite tudi surovi in zglajeni periodogram ter
# komentirajte, ali se vidi kakšna sezonskost in kakšna
# naj bi bila perioda.