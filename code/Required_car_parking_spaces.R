hotel_limpio <- read.csv(local_host(), header = TRUE, stringsAsFactors = FALSE)
view(hotel_limpio)
library(ggplot2)
table(hotel_limpio$required_car_parking_spaces)
grafico_cp <- table(hotel_limpio$required_car_parking_spaces)
options(scipen = 999)
barplot(grafico_cp, main = "Cantidad de estacionamientos requeridos por Reserva")