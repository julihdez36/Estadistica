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
## Arreglo bidimensional

mat <- matrix(1:6, nrow = 2, ncol = 3)
print(mat)

## Una matriz puede ser la combinación de vectores

vec1 <- 1:6
vec2 <- 7:12

mat1 <- cbind(vec1, vec2)
mat2 <- rbind(vec1, vec2)

# Dimensionalidad

dim(mat1)
dim(mat2)

# Arrays
## Generalización de matrices

arr <- array(1:8, dim = c(2, 2, 2))
print(arr)

# Data frame

df <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  score = c(85, 92, 88)
)
print(df)

# Listas

lst <- list(
  num = 1:3,
  char = c("a", "b", "c"),
  bool = TRUE
)
print(lst)


# Factores

fact <- factor(c("low", "medium", "high", "medium", "low"))
print(fact)

# Pagina 24

