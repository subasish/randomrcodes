## install rCharts
## library(devtools)
## install_github('rCharts', 'ramnathv')

library(rCharts)
la_parish=read.csv("LA_parish.csv")
head(la_parish)


tab2=dTable(la_parish, sPaginationType = "full_numbers")
tab2$templates$script =  "http://timelyportfolio.github.io/rCharts_dataTable/chart_customsort.html" 
tab2$params$table$aoColumns =
  list(
    list(sType = "string_ignore_null", sTitle = "Parish"),
    list(sType = "string_ignore_null", sTitle = "2013"),
    list(sType = "string_ignore_null", sTitle = "2012"),
    list(sType = "string_ignore_null", sTitle = "2011"),
    list(sType = "string_ignore_null", sTitle = "2010"),
    list(sType = "string_ignore_null", sTitle = "2009"),
    list(sType = "string_ignore_null", sTitle = "2008"),    
    list(sType = "string_ignore_null", sTitle = "2007"),
    list(sType = "string_ignore_null", sTitle = "2006"),
    list(sType = "string_ignore_null", sTitle = "2005")  
  )
tab2


### push rChart to rpubs
tab2$publish("Louisiana Traffic Fatal Crashes", host = 'rpubs')