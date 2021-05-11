table(hotel_limpio$required_car_parking_spaces)
grafico_cp <- table(hotel_limpio$required_car_parking_spaces)
barplot(grafico_cp, main = "Cantidad de estacionamientos requeridos por Reserva")