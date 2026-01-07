####################
#                  #
# Copia todo esto! #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia
# Para aprender más sobre R 
# Suscribete en YouTube  https://bit.ly/2WNDhNR

# video 09 - listas

# Objetivo: estudiar qué son las listas en R
# -------------------------------------------
# En este ejercicio vamos a:
# 1. Crear listas en R
# 2. Seleccionar elementos de una lista
# 3. Identificar listas en R

#####################################
# correr esto antes de empezar...   #
#####################################

# Cargando datos de videos anteriores
# informacion peliculas shrek. Ver video --> https://bit.ly/2LaUWbo
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)
# informacion estrenos de peliculas. Ver video --> https://bit.ly/2KDKCJE
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

# crear diferentes estructuras de datos en R
vector_titulos <- nombre
matriz_peliculas <- matrix(c(warner, disney, fox),
                           nrow = 9,
                           ncol = 3)
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)

####################################
# práctica 1: crear una lista en R #
####################################

# crear lista en R
lista_curso <- list(vector_titulos,
                    matriz_peliculas)

# mostrar lista
lista_curso

# cambiar nombre de dataframe
names(lista_curso) <- c('vector',
                        'matriz')

# mostrar lista (sí, otra vez)
lista_curso

##################################################
# práctica 2: Seleccionar elementos de una lista #
##################################################

# Seleccionar vector de la lista
lista_curso[['vector']] # recomiendo usar este
lista_curso$vector # no recomiendo usar este porque confunde con df

# Seleccionar el tercer elemento del vector de la lista
lista_curso[['vector']][3]

# Seleccionar fila 5 y columna 3 de la matriz de la lista
lista_curso[['matriz']][5,3]

######################################################
# práctica 3: agregar/eliminar elementos a una lista #
######################################################

# agregar dataframe a lista
lista_curso[['dataframe']] <- peliculas_df

# revisar que está el dataframe
lista_curso

# eliminar un elemento de lista
lista_curso[['vector']] <- NULL

# revisar que no está el vector
lista_curso

# Hecho con gusto por Rafa @GonzalezGouveia
# Para aprender más sobre R 
# Suscribete en YouTube  https://bit.ly/2WNDhNR