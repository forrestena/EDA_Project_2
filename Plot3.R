b <- subset(SCC_SUMMARY, SCC_SUMMARY$fips == "24510")
bt <- aggregate(Emissions ~ year + type, b, sum)

##use ggplot

library(ggplot2)
ggplot(bt, aes(year, Emissions, col = type))+
  geom_line() +
  geom_point() +
  ggtitle("Baltimore City total PM2.5 emission by type")+
  xlab("year") +
  ylab("PM2.5") +
  scale_colour_discrete(name ="Source Type")+
  theme(legend.title = element_text())

