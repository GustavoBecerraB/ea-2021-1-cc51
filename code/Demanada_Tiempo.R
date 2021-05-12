#Carga de DATOS
hotel_limpio <- read.csv("hotel_limpio.csv", header = TRUE, stringsAsFactors = FALSE)


#Analisis de Datos
hotel_booking_reserva <- hotel_limpio%>%filter(is_canceled == 0)
count_Hotel_Tiempo = count(hotel_booking_reserva, ï..hotel, arrival_date_year)
ggplot(count_Hotel_Tiempo, aes(x=arrival_date_year, y = n  )) +
  geom_line(aes(color = ï..hotel, linetype = ï..hotel )) + labs(x = "Años registrados", y = "Total de reservas registradas") +
  ggtitle("RESERVAS ANUALES REALIZADAS ") +  theme(plot.title = element_text(hjust = 0.5))
