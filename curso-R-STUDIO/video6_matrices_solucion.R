####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# video 06 - matrices

# Objetivo: estudiar qué es una matriz en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear matrices en un script
# 2. Realizar opraciones aritméticas con matrices
# 3. Seleccionar elementos en una matriz


#####################################
# práctica 1: creando matrices en R #
#####################################

# crear vectores para las columnas de la matriz
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)
# fuente https://www.the-numbers.com/market/

# creando matriz a partir de vectores
peliculas <- matrix(c(warner, disney, fox),
                    nrow = 9,
                    ncol = 3)

# imprimir matriz en consola
peliculas

# agregar nombres de columnas
colnames(peliculas) <- c('warner', 'disney', 'fox')

# agregar nombres de filas/renglones
rownames(peliculas) <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')

# imprimir matriz por segunda vez
peliculas

####################################################
# práctica 2: operaciones aritméticas con matrices #
####################################################

# resta 5 a la matriz
peliculas - 5

# sumar matriz consigo misma
peliculas + peliculas

# multiplicar la matriz consigo mismo
peliculas * peliculas

###################################################
# práctica 3: selección de elementos de un matriz #
###################################################

# seleccionar un elemento de la matriz
peliculas[3, 2]
peliculas['2012', 'disney']

# seleccionar más de un elemento de la matriz
peliculas[c(3,4), c(2,3)]
peliculas[c(3,4), c('disney', 'fox')]

# seleccionar una fila o renglón
peliculas[3,]
peliculas['2012',]

# seleccionar una columna
peliculas[, 2]
peliculas[, 'disney']

# Hecho con gusto por Rafa @GonzalezGouveia
# Suscribete para más código en R https://bit.ly/2WNDhNR