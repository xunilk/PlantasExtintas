library(tidyverse)

#cargar una base de datos

data("mtcars")

#filtro solo los vehiculos 8 cilindros

Mt<- mtcars %>% filter(cyl == 8)
