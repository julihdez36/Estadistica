# https://bookdown.org/dparedesi/data-science-con-r/probabilidades-discretas.html#otras-funciones-para-crear-vectores
# Probabilidades discretas ------------------------------------------------

# Simulación de montecarlo

# La simulación o método de Montecarlo es un método estadístico utilizado para 
# resolver problemas matemáticos complejos a través de la generación de
# variables aleatorias.

estudiantes <- rep(x = rep(c('Mujer','Hombre'), times = c(4,6)))

sample(estudiantes, 1) # Muestra aleatoria

# Simulemos un determinado número de veces el experimento de sacar un 
# elemento aleatorio.

sample(x = estudiantes,size = 100,replace = T)

# Otra forma de hacerlo sería con la función for

simulacion <- c()
for (i in 1:100) {
  simulacion <- c(simulacion, sample(estudiantes,1))
}
simulacion

# Observemos resultados

prop.table(table(simulacion))

# Entre mas veces hagamos el experimiento, mas se acercará a la
# probabilidad teórica

simulacion_2 <- sample(x = estudiantes,size = 1000,replace = T)
prop.table(table(simulacion_2))

# Baraja de 4 palos

numeros <- c("As", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete", 
             "Ocho", "Nueve", "Diez", "Jack", "Reina", "Rey")
palos <- c("de Corazones", "de Diamantes", "de Picas", "de Tréboles")

# Creamos la combinatoria de cartas
combinatoria <- expand.grid(numero = numeros, palo = palos)

# Concatenamos vectores para tener nuestra combinación final
baraja <- paste(combinatoria$numero, combinatoria$palo)

# Probabilidad de que la carta sea rey de diamantes

mean(baraja == 'Rey de Diamantes') # El promedio traduce la probabilidad

# Probabilidad de que la carta sea alguna reina

paste("Reina", palos)

mean(baraja %in% paste("Reina", palos))


# Combinaciones y permutaciones -------------------------------------------

Cuando uno de los eventos afecta a otros, se llaman eventos dependientes

# Existen dos maneras de ordenar o combinar resultados de eventos dependientes. 

# Las permutaciones son agrupaciones en las que importa el orden de los objetos.
# Las combinaciones son agrupaciones en las que el contenido importa pero el orden no.

install.packages("gtools")
library(gtools)

# 10 competidores

competitors <- c("Jenny", "Freddy", "Yasan", "Iver", "Pamela", "Alexandra", 
                 "Bladimir", "Enrique", "Karen", "Christiam")
