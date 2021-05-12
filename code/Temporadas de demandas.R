#Carga de datos
hotel_limpio <- read.csv("/Users/wilmartarazona/Downloads/hotel_limpio.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#Visualización de datos C
hotel_limpio_meses <- data.frame(table(hotel_limpio$arrival_date_month))
hotel_limpio_meses$Var1 = factor(hotel_limpio_meses$Var1, levels = month.name)
hotel_limpio_meses$Demanda <- cut(hotel_limpio_meses$Freq, breaks = 3, labels = c("Baja", "Media", "Alta"))
ggplot(data = hotel_limpio_meses, aes(x = Var1, y = Freq, fill = Demanda)) + geom_bar(stat = "identity") +
  labs(x = "Mes", y = "Cantidad de reservas") +
  ggtitle("Cantidad de reservas por meses con temporadas de demanda")