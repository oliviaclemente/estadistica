library(tidyverse) 
# Incluye los siguientes paquetes:
# - readr: para la lectura de ficheros csv. 
# - dplyr: para el preprocesamiento y manipulación de datos.
library(vtable) # para resúmenes estadísticos.
library(skimr) # para resúmenes estadísticos.
library(summarytools) # para resúmenes estadísticos.
library(knitr) # para el formateo de tablas.
library(kableExtra) # para personalizar el formato de las tablas.
library(broom) # para el ajuste de modelos de regresión por grupos


df <- data.frame(
    x = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9),
    y = c(2, 5, 8, 11, 14, 17, 20, 23, 26, 29)
)
plot(df$x, df$y, xlab = "X", ylab = "Y", main = "Diagrama de dispersión")
library(ggplot2)
ggplot(df, aes(x = x, y = y)) +
    geom_point(col = "red") +
    labs(title = "Diagrama de dispersión", x = "X", y = "Y")
recta_y_x <- lm(y ~ x, df) 
summary(recta_y_x)
cat(paste("Coeficientes de regresión de y sobre x:", summary(recta_y_x)$r.squared))
