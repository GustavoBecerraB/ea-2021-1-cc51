hotel_booking_data <- read.csv(local_host(), header = TRUE, stringsAsFactors = FALSE)
hotel_limpio <- na.omit(hotel_booking_data)
View(hotel.limpio)

#Cambio a promedio o mediana del outlier
fix_outliers <- function(x, removeNA = TRUE){
    quantiles <- quantile(x, c(0.05, 0.95), na.rm = removeNA)
    x[x<quantiles[1]] <- mean(x, na.rm = removeNA)
    x[x>quantiles[2]] <- median(x, na.rm = removeNA)
    x 
}

#Para el lead_time
boxplot(hotel_limpio$lead_time)
ld_hb_clean <- fix_outliers(hotel_limpio$lead_time)
par(mfrow = c(1,2))
boxplot(hotel_limpio$lead_time, main = "Lead Time sin Outliers")
boxplot(ld_hb_clean, main = "Lead Time Con Outliers")

#Para el ADR
boxplot(hotel_limpio$adr)
adr_hb_clean <- fix_outliers(hotel_limpio$adr)
par(mfrow = c(1,2))
boxplot(hotel_limpio$adr, main = "ADR sin outlier")
boxplot(adr_hb_clean, main = "ADR con outlier")

# Para Required_car_parking_space
boxplot(hotel_limpio$required_car_parking_spaces)
rcps_hb_clean <- fix_outliers(hotel_limpio$required_car_parking_spaces)
par(mfrow = c(1,2))
boxplot(hotel_limpio$required_car_parking_spaces, main ="Car Parking sin Outliers")
boxplot(rcps_hb_clean, main ="Car Parking Con Outliers")

#Para Children
boxplot(hotel_limpio$children)
cl_hb_clean <- fix_outliers(hotel_limpio$children)
par(mfrow = c(1,2))
boxplot(hotel_limpio$children, main = "Children sin outliers")
boxplot(cl_hb_clean, main="Children con outliers")

#Para Babies
boxplot(hotel_limpio$babies)
ba_hb_clean <- fix_outliers(hotel_limpio$babies)
par(mfrow = c(1,2))
boxplot(hotel_limpio$babies, main ="Babies sin outliers")
boxplot(ba_hb_clean, main= "Babies con outliers")

#Para stays_in_weekend_nights
boxplot(hotel_limpio$stays_in_weekend_nights)
swn_hb_clean <-fix_outliers(hotel_limpio$stays_in_weekend_nights)
par(mfrow = c(1,2))
boxplot(hotel_limpio$stays_in_weekend_nights, main = "stays_in_weekend_nights sin outliers")
boxplot(swn_hb_clean, main ="stays_in_weekend_nights con outliers")

#Para stays_in_week_nights
boxplot(hotel_limpio$stays_in_week_nights)
wkn_hb_clean <-fix_outliers(hotel_limpio$stays_in_week_nights)
par(mfrow = c(1,2))
boxplot(hotel_limpio$stays_in_week_nights, main = "stays_in_week_nights sin outliers")
boxplot(wkn_hb_clean, main ="stays_in_week_nights con outliers")

#Para Adults
boxplot(hotel_limpio$adults)
adults_clean <- fix_outliers(hotel_limpio$adults)
par(mfrow = c(1,2))
boxplot(hotel_limpio$adults, main = "Adults sin outliers")
boxplot(adults_clean, main ="Adults con outliers")

# Para previous_cancellations
boxplot(hotel_limpio$previous_cancellations)
pc_clean <- fix_outliers(hotel_limpio$previous_cancellations)
par(mfrow = c(1,2))
boxplot(hotel_limpio$previous_cancellations, main ="previous_cancellations sin outliers ")
boxplot(pc_clean, main ="previous_cancellations con outliers")

#Para previous_bookings_not_canceled
boxplot(hotel_limpio$previous_bookings_not_canceled)
pbnc_clean <- fix_outliers(hotel_limpio$previous_bookings_not_canceled)
par(mfrow = c(1,2))
boxplot(hotel_limpio$previous_bookings_not_canceled, main= "previous_bookings_not_canceled sin outliers")
boxplot(pbnc_clean, main = "previous_bookings_not_canceled con outliers")

#Para booking_changes
boxplot(hotel_limpio$booking_changes)
bchanges_clean <- fix_outliers(hotel_limpio$booking_changes)
par(mfrow = c(1,2))
boxplot(hotel_limpio$booking_changes, main = "booking_changes sin outliers")
boxplot(bchanges_clean, main ="booking_changes con outliers")

#Para days_in_waiting_list
boxplot(hotel_limpio$days_in_waiting_list)
dwt_clean <- fix_outliers(hotel_limpio$days_in_waiting_list)
par(mfrow = c(1,2))
boxplot(hotel_limpio$days_in_waiting_list, main= "days_in_waiting_list sin outliers")
boxplot(dwt_clean, main= "days_in_waiting_list con outliers")

#Para guardar el archivo .csv
write.csv(hotel_limpio, local_host(), na= "NA", row.names = FALSE)
