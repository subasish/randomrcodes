
## Install rCharts
## library(devtools)
## install_github('rCharts', 'ramnathv')

library(rCharts)
data=read.csv("pedes_crash_la.csv")
head(data)
names(data)
data1 <- data[c(7, 8, 17, 21,22, 23)]
library("plyr")
m <- count(data1)
n1 <- nPlot(freq ~ Ped.Inj., data = m, group = 'Collision', type = 'multiBarChart')
n1$addControls("x", "Ped.Inj.", c('Ped.Inj.', 'Collision','Dr.Gender'))
n1$addControls("group", "Collision", c('Ped.Inj.', 'Collision', 'Dr.Gender'))
n1$addControls("type", "multiBarChart", values = c('multiBarChart', 'multiBarHorizontalChart'))
n1$setTemplate(script = system.file('libraries', 'nvd3', 'controls', 'datgui.html', package = 'rCharts'))
n1


### push rChart to rpubs
n1$publish("Pedestrian Crashes in Louisiana", host = 'rpubs')