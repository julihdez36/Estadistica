# Los objetos son los elementos básicos de R
# Se asignan a través del operador de asignación <-

num <- 5

# Los dos objetos mas utilizados son el dato y la función

# Las funciones cosntan de un nombre seguido de paréntesis, nombre(), donde se incluyen argumentos
# Con ?nombre, accedemos a la ayuda

?q # Terminate an R Session
q()

# Usar R como una calculadora

4*3; 5+2; 8-2 ; 8/2
3^2 ; exp(2) ; sqrt(16)

# Cuántos objetos he creado
eje <- 'ejemplo'
objects()

# Podemos suprimir también los objetos
rm(eje)


# Tipos de datos en R (modo) ----------------------------------------------


# Numeric

num <- 42
print(mode(num))  # Resultado: "numeric"
num <- 3.14
print(mode(num))  # Resultado: "numeric"

# Character

char <- "Hello, R!"
print(mode(char))  # Resultado: "character"

# Logical

bool <- TRUE
print(mode(bool))  # Resultado: "logical"

# Complex

comp <- 1 + 2i
print(mode(comp))  # Resultado: "complex"


# Estructuras de datos ----------------------------------------------------

# Vectores
## Deben ser del mismo modo

num_vector <- c(1, 2, 3, 4)         # Vector numérico
char_vector <- c("a", "b", "c")     # Vector de caracteres
bool_vector <- c(TRUE, FALSE, TRUE) # Vector lógico

# podemos valorar su longitud

length(num_vector)
length(char_vector)

# Matriz
## Arreglo bidimensional donde los elementos son del mismo modo

mat <- matrix(1:9,ncol = 3)
print(mat)

# Completa las matrices por columna, eso lo podemos cambiar

mat_2 <- matrix(data = mat,byrow = T,nrow = 3)
mat_2

## Una matriz puede ser la combinación de vectores

vec1 <- 1:6
vec2 <- 7:12

mat1 <- cbind(vec1, vec2)
mat2 <- rbind(vec1, vec2)

# Dimensionalidad

dim(mat1)
dim(mat2)

## Podemos darle nombre a las filas y columnas

matrix(sample(x = 4:33,size = 8),ncol = 4,
       dimnames = list(c('Individuo1','Individuo2'),
                       c('Hermanos','Edad','Peso','Escolaridad')))

#No es la forma habitual de trabajo con matrices


# Arrays
## Generalización de matrices

arr <- array(1:8, dim = c(2, 2, 2))
print(arr)


# Data frame

# La limitación de las matrices y los arrays son los modos de los elementos
# que contiene. Por tando, nosotros trabajaremos con marcos de datos 
# o data frame


df <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  score = c(85, 92, 88)
)
print(df)

# Listas

## Es el objeto mas flexible, por lo que las salidas de los métodos 
## Estadisticos que evaluaremos, suelen estár en formato lista

lst <- list(
  num = 1:3,
  char = c("a", "b", "c"),
  bool = TRUE
)
print(lst)


# Factores

fact <- factor(c("low", "medium", "high", "medium", "low"))
print(fact)


# Gráficos ----------------------------------------------------------------


# Los gráficos en R se dividen 
# Funciones gráficas de alto nivel: se crea un gráfico nuevo
# Funciones gráficas de bajo nivel: modificamos uno ya existente

# Para crearlo debemos construir los vectores

x <- seq(-pi, pi,len = 100)
plot(x, sin(x), type = 'l')

# Mediante gráfico de dispersión

plot(rnorm(50),rnorm(50)) # Gráfico de dispersión

# Funciones de bajo nivel

# Generar datos aleatorios de una distribución gamma
set.seed(123)  # Para reproducibilidad
datos_gamma <- rgamma(1000, shape = 2, scale = 2)

# Generar el histograma
hist(datos_gamma, main = "Histograma con Asimetría Positiva (Gamma)",
     xlab = "Valores", breaks = 20, freq = F, col = 'lightblue')

# Añadir líneas de densidad para una mejor visualización
lines(density(datos_gamma), col = "red", lwd = 2)
abline(v = mean(datos_gamma), col = 'purple', lwd = 2)
abline(v = median(datos_gamma), col = 'green', lwd = 2)


# Librerías ---------------------------------------------------------------

install.packages("chemometrics")
library(chemometrics)
