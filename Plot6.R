bla <- subset(SCC_SUMMARY, SCC_SUMMARY$fips %in% c("24510","06037") & SCC_SUMMARY$type == "ON-ROAD")
bla <- aggregate(Emissions ~ year + fips, bla, sum)


#use ggplot2
library(ggplot2)
ggplot(bla, aes(year, Emissions, col = fips)) +
  geom_line() +
  geom_point() +
  ggtitle("Baltimore and LA County Vehicle PM2.5 Emissions by Year") +
  xlab("Year") +
  ylab("PM2.5")+
  scale_colour_discrete(name = "Location", labels = c("LA County", "Baltimore")) +
  theme(legend.title = element_text(face = "bold"))