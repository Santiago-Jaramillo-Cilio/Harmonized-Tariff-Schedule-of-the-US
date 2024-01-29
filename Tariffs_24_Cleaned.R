Tariffs_24 <- read_csv('hts_2024_basic_edition_csv.csv')
head(Tariffs_24)
str(Tariffs_24)
colnames(Tariffs_24)
glimpse(Tariffs_24)

# Replace missing HTS Numbers with "Unknown"
Tariffs_24$`HTS Number`[is.na(Tariffs_24$`HTS Number`)] <- "Unknown"

# Standardize 'Unit of Quantity' by replacing NA with "Not Available"
Tariffs_24$`Unit of Quantity`[is.na(Tariffs_24$`Unit of Quantity`)] <- "Not Available"

# For duty columns, replace NA with "N/A" to indicate "Not Applicable"
duty_columns <- c("General Rate of Duty", "Special Rate of Duty", "Column 2 Rate of Duty", "Additional Duties")
Tariffs_24[duty_columns] <- lapply(Tariffs_24[duty_columns], function(x) ifelse(is.na(x), "N/A", x))

# to remove brackets and quotes
Tariffs_24$`Unit of Quantity` <- gsub("\\[|\\]|\"", "", Tariffs_24$`Unit of Quantity`)

# consolidate duty rates
Tariffs_24$AnyDutyApplicable <- apply(Tariffs_24[duty_columns], 1, function(x) any(x != "N/A"))

# Remove leading and trailing spaces
Tariffs_24$`Additional Duties` <- trimws(Tariffs_24$`Additional Duties`)

# Data Consistency
Tariffs_24$Indent <- as.integer(Tariffs_24$Indent)

# Save the cleaned dataframe as a CSV file
write.csv(Tariffs_24, "Tariffs_24_Cleaned.csv", row.names = FALSE)

View(Tariffs_24)




