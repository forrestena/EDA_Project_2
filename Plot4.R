c <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
cs <- SCC_SUMMARY[SCC_SUMMARY$SCC %in% c$SCC,]
ct <- aggregate(Emissions ~ year + type, cs, sum)

#use ggplot2
library(ggplot2)

ggplot(ct, aes(year, Emissions, col = type))+
  geom_line()+
  geom_point()+
  ggtitle("US pm2.5 coal emission by coal type")+
  ylab("PM2.5")+
  xlab("year")+
  scale_colour_discrete(name ="Source Type")+
  theme(legend.title = element_text())
