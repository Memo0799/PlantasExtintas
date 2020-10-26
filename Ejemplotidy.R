library(tidyverse)
#Cargar una base de datos

data(mtcars)

#Filtro hasta solo los vehiculos de 8 cilindros

MT <- mtcars %>% filter(cyl == 8)
