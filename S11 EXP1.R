# Install packages (Run only once)
install.packages("leaflet")

# Load library
library(leaflet)

# Create dataset (Sample coordinates)
city <- c("City A", "City B", "City C")
lat <- c(12.97, 13.08, 12.90)
lon <- c(77.59, 80.27, 78.12)

data <- data.frame(city, lat, lon)

# Create Map
leaflet(data) %>%
  addTiles() %>%
  addMarkers(
    lng = ~lon,
    lat = ~lat,
    popup = ~city,
    label = ~city
  )