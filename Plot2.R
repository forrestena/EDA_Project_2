##Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

b <- subset(SCC_SUMMARY, SCC_SUMMARY$fips == "24510")

totalb <- aggregate(Emissions ~ year, b, sum)

#use base plotting
plot(totalb$year, totalb$Emissions, type = "o", main = "Total PM2.5 in Baltimore City", xlab = "Year", ylab = "PM2.5", col = "blue")