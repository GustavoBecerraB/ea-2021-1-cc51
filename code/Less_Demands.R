hotel_limpio <- read.csv(local_host(), header = TRUE, stringsAsFactors = FALSE)
view(hotel_limpio)
library(ggplot2)
table(hotel_limpio$arrival_date_month)
View(table(hotel_limpio$arrival_date_month))
hl_months <- data.frame(Months = table(hotel_limpio$arrival_date_month))
hl_months <- hl_months[order(hl_months$Months.Freq),]
barplot(hl_months$Months.Freq, main = "Distribución mensual de demanda de reserva", names.arg = hl_months$Months.Var1)