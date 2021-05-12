hotel_limpio <- read.csv("/Users/wilmartarazona/Downloads/hotel_limpio.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
grafico = table(hotel_limpio$is_canceled,  hotel_limpio$distribution_channel)
View(grafico)
barplot(grafico, col=c("green","yellow"), legend = c("Completadas","Cancelado"), main = "Reservaciones completadas y canceladas por canal de distribución")
