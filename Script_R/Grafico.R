library(ggplot2)
library(plotly)
library('tidyverse')
library(dplyr)

##Lectura del set de datos
URL          <- "https://raw.githubusercontent.com/brii96/visualizacion/main/Set_Datos/"
url_archivo  <- paste(URL,"Ventas_1Variable.csv", sep = "")
ventas   <- read.csv(url_archivo, sep = ",", header = T)
View(ventas)
str(ventas)

#Se convierte un atributo del objetivo, que es de tipo factor a tipo numerico.
ventas$Produccion = as.numeric(ventas$Produccion)

ggplot(data = ventas) + 
  geom_col(mapping = aes(x = Anio, y = Produccion/1000, fill = Produccion / 1000)) +
  geom_text(mapping = aes(x = Anio, y = Produccion / 1000, label = Produccion / 1000), 
            color = "white", size = 4, vjust = 1.5) +
  labs(title = "Producción Anual", x = "Año", y = "Miles en Toneladas") +
  scale_y_continuous(breaks = seq(0,10000,500)) +
  scale_x_continuous(breaks = seq(1999,2008,1)) +
  theme_bw()
