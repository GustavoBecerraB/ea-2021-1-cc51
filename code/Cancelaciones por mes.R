#Carga de datos
hotel_limpio <- read.csv("/Users/wilmartarazona/Downloads/hotel_limpio.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#Visualización de datos G
cancelaciones <- data.frame(table(hotel_limpio$arrival_date_month[hotel_limpio$is_canceled == 1]))
cancelaciones$Var1 = factor(cancelaciones$Var1, levels = month.name)
plot(cancelaciones, main="Cantidad de cancelaciones por mes", xlab="Mes", ylab="Cantidad de cancelaciones")