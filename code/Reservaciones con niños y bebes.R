#Carga de datos
hotel_limpio <- read.csv("/Users/wilmartarazona/Downloads/hotel_limpio.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#Visualización de datos - Preggunta E
hotel_limpio$bebesYniños = (hotel_limpio$children>0 | hotel_limpio$babies>0)
grafico <- table(hotel_limpio$bebesYniños)
options(scipen = 999)
barplot(grafico, col=c("purple", "cyan"), legend=c("Sin niños y/o bebés", "Con niños y/o bebés"), main="Reservaciones con niños y/o bebés")