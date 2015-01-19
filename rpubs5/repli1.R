c1 <- nPlot(billions ~ Time, 
            group = "Location", 
            data = region_dat, 
            type = "stackedAreaChart")

c1$chart(color = brewer.pal(6, "Set2"))
c1$yAxis(tickFormat= "#!d3.format(',.1f')!#")
c1$yAxis(axisLabel = "Population (billions)", width = 62)
c1$xAxis(axisLabel = "Year")

c1$chart(tooltipContent = "#! function(key, x, y){
        return '<h3>' + key + '</h3>' + 
        '<p>' + y + ' billion in ' + x + '</p>'
        } !#")

c1


## publish in rpubs
c1$publish("replicate a rchart", host = 'rpubs')