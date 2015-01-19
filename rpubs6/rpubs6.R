library(rCharts)
SchoolsGroup=read.csv("LA_parish.csv")
head(SchoolsGroup)
# These are classifications of NCAA athletic department at public universities in to 4 groups. Please see the blog post where these charts were originally used 
# regarding more details on the origins of these data.: http://analyticsandvisualization.blogspot.com/2013/10/subsidies-revenues-and-expenses-of-ncaa.html
tab2=dTable(SchoolsGroup, sPaginationType = "full_numbers")
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

tab2$publish("Louisiana Traffic Fatal Crashes", host = 'rpubs')