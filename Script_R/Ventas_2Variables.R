library(knitr)
library(plotly)

install.packages("webshot")
webshot::install_phantomjs()

##Lectura del set de datos
URL          <- "https://raw.githubusercontent.com/brii96/visualizacion/main/Set_Datos/"
url_archivo  <- paste(URL,"Ventas_3Variable.csv", sep = "")
ventas1   <- read.csv(url_archivo, sep = ",", header = T)
View(ventas1)
str(ventas1)

#Funcion que muestra las variables de cabecera/header
names(ventas1)

#Creacion del data frame
dataf = data.frame(ventas1)

#Visualizacion del dataframe
View(dataf)

#str(data.frame) me permite conocer los tipos de datos que maneja el dataframe
str(dataf)

#data.class(dataframe) me permite saber si mi variable es realmente un dataframe
data.class(dataf)

#Con la funcion plot_ly de la libreria PLOTLY diseño la escala en los ejes, 
#ademas de la respectiva comparacion de Dos Variables

grafico <- plot_ly(dataf, x=~Region, y=~Granel, name="granel", type='bar', 
                   text = ~Granel, textposition = 'outside')%>%
add_trace(y=~Bolsa, name="bolsa", text=~Bolsa, textposition='outside')
grafico

