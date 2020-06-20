
##Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

totalemission <- aggregate(Emissions ~ year, SCC_SUMMARY, sum)

##base plotting system
plot(totalemission$year, totalemission$Emissions, type = "o", col = "pink", main = "Total PM2.5 Emissions in US by year", ylab = "Total PM2.5", xlab = "year")

