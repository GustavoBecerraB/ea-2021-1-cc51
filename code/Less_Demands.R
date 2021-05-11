table(hotel_limpio$arrival_date_month)
View(table(hotel_limpio$arrival_date_month))
hl_months <- table(hotel_limpio$arrival_date_month)
barplot(hl_months, main = "Distribución mensual de demanda de reserva")