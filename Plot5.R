bv <- subset(SCC_SUMMARY, SCC_SUMMARY$fips == "24510" & SCC_SUMMARY$type == "ON-ROAD")
bm <- aggregate(Emissions ~ year, bv, sum)

#use ggplot
library(ggplot2)
ggplot(bm, aes(year, Emissions)) +
  geom_point(col = "black") +
  geom_line(col = "black") +
  ggtitle("BaltimoreVehicle PM2.5 Emissions by Year") +
  xlab("Year") +
  ylab("PM2.5")