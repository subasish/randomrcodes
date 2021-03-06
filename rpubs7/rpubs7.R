
## Install rCharts
## library(devtools)
## install_github('rCharts', 'ramnathv')

library(rCharts)
data=read.csv("LA_parish.csv")
head(data)
datamelt=ddply(melt(data),.(variable),transform,rescale=rescale(value))
hmap <- rPlot(variable ~ Parish, color = 'rescale', data = datamelt, type = 'tile')
hmap$addParams(height = 400, width=3000)
hmap$guides(reduceXTicks = TRUE)
hmap$guides("{color: {scale: {type: gradient, lower: white, upper: green}}}")
hmap$guides(y = list(numticks = length(unique(findatamelt$value))))
hmap$guides(x = list(numticks = 40))
hmap

### push rChart to rpubs
hmap$publish("Louisiana Traffic Fatal Crashes Heatmap (Parish wise)", host = 'rpubs')