library(knitr)
library(plotly)

##Lectura del set de datos
URL          <- "https://raw.githubusercontent.com/brii96/visualizacion/main/Set_Datos/"
url_archivo  <- paste(URL,"Ventas_2Variable.csv", sep = "")
ventas2   <- read.csv(url_archivo, sep = ",", header = T)
View(ventas2)
str(ventas2)

names(ventas2)
dataf2 = ventas2
#data.class me permite conocer los tipos de datos que maneja el dataframe
data.class(dataf2)

#str me permite saber si mi variable es realmente un dataframe
str(dataf2)


grafico3 = plot_ly(dataf2, x=~Anio, y=~Mercado.Interno, name="Mercado Interno", type='bar')%>%
  add_trace(y=~Exportacion, name="Exportación")%>%
  add_trace(y=~Total, name="Total")%>%
  layout(yaxis=list(tittle='count'), barmode= 'stack')

grafico3

