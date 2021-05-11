library(dplyr)
library(ggplot2)
library(stringr)
hotel_booking_data <- read.csv("hotel_bookings_miss.csv", header = TRUE, stringsAsFactors = FALSE)
names(hotel_booking_data)

hotel_booking_data_cleam <- na.omit(hotel_booking_data)
hotel_booking_reserva <- hotel_booking_data_cleam%>%filter(is_canceled == 0)



count_Hotel = count(hotel_booking_reserva, ï..hotel)
ggplot(count_Hotel, aes(x=ï..hotel, y = n)) +  geom_bar(stat="identity", fill="#FF9999", colour="black") +
  labs(x="Hoteles Registrados", y="Numero Total de Reservas") + ggtitle("RESERVAS CONFIRMADAS EN HOTELES") +
  theme(plot.title = element_text(hjust = 0.5))


count_Hotel_Tiempo = count(hotel_booking_reserva, ï..hotel, arrival_date_year)
ggplot(count_Hotel_Tiempo, aes(x=arrival_date_year, y = n  )) +
  geom_line(aes(color = ï..hotel, linetype = ï..hotel )) + labs(x = "Años registrados", y = "Total de reservas registradas") +
  ggtitle("RESERVAS ANUALES REALIZADAS ") +  theme(plot.title = element_text(hjust = 0.5))