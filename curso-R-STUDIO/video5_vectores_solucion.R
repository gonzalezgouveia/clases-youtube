####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# video 05 - vectores

# Objetivo: estudiar qué es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritméticas con vectores
# 3. Seleccionar elementos en un vector


#####################################
# práctica 1: creando vectores en R #
#####################################

# crear vector carácter con nombre de las películas
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")

# crear vector numérico con puntuación de las películas
puntuacion <- c(7.9, 7.2, 6.1, 6.3)

# crear vector lógico sobre si la película es posterior a 2015
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

####################################################
# práctica 2: operaciones aritméticas con vectores #
####################################################

# sumar 2 a la puntuación
puntuacion + 2

# dividir la puntuación entre 2
puntuacion/2

# crea la puntuación de rafa
puntuacion_de_rafa <- c(10, 9, 6, 7)

# calcular diferencia entre puntuaciones
puntuacion_de_rafa - puntuacion

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# práctica 3: selección de elementos de un vector #
###################################################

## selección basada en posición
# seleccionar la tercera película
nombre[3]

# seleccionar la primera y la última película
nombre[c(1, 4)]

## selección basada en condición lógica
# crear condición lógica
puntuacion_baja <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de películas con puntuaciones bajas
nombre[puntuacion_baja]

# Hecho con gusto por Rafa @GonzalezGouveia
# Suscribete para más código en R https://bit.ly/2WNDhNR