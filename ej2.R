# Leer el archivo csv y crear un data frame
datos <- read.csv("horas-estudio.csv", header = TRUE)

# Verificar los datos leídos
head(datos)

# Crear un data frame con las columnas de horas de estudio y suspensos
horas_suspensos <- data.frame(
  Horas_Estudio = datos$Horas_Estudio,
  Suspensos = datos$Suspensos
)

# Verificar el nuevo data frame creado
head(horas_suspensos)

