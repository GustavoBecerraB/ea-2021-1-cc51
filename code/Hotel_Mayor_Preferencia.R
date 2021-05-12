#Carga de DATOS
hotel_limpio <- read.csv("hotel_limpio.csv", header = TRUE, stringsAsFactors = FALSE)

#VISUALIZACION DE LA A
hotel_booking_reserva <- hotel_limpio%>%filter(is_canceled == 0)
count_Hotel = count(hotel_booking_reserva, ï..hotel)
ggplot(count_Hotel, aes(x=ï..hotel, y = n)) +
  geom_bar(stat="identity", fill="#FF9999", colour="black") +
  labs(x="Hoteles Registrados", y="Numero Total de Reservas") +
  ggtitle("RESERVAS CONFIRMADAS EN HOTELES") +
  theme(plot.title = element_text(hjust = 0.5))



