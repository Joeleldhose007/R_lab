install.packages("ggplot2")
install.packages("dplyr")
install.packages("lubridate")

library(ggplot2)
library(dplyr)
library(lubridate)

covid_data <- read.csv("/Users/mkailasnath/Documents/R/LabCycle_1/lab_cycle_2/time_series/time-series-19-covid-combined.csv", 
                       stringsAsFactors = FALSE)

covid_data$Date <- as.Date(covid_data$Date, format = "%Y-%m-%d")

# Check for NA values in the Date and Confirmed columns
sum(is.na(covid_data$Date))
sum(is.na(covid_data$Confirmed))

cleaned_data <- covid_data %>%
  filter(!is.na(Date) & !is.na(Confirmed))

daily_cases <- cleaned_data %>%
  group_by(Date) %>%
  summarise(Confirmed = sum(Confirmed, na.rm = TRUE))

ggplot(daily_cases, aes(x = Date, y = Confirmed)) +
  geom_line(color = "blue") +
  labs(title = "Global COVID-19 Confirmed Cases Over Time", 
       x = "Date",
       y = "Number of Confirmed Cases") +
  theme_minimal()
