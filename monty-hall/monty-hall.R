# problema monty-hall
# https://es.wikipedia.org/wiki/Problema_de_Monty_Hall

juego_monty_hall <- function(cambio){
  # definir las puertas
  puertas <- 1:3
  
  # definir premio
  premio <- sample(puertas, 1)
  
  # escoger una puerta al azar
  eleccion <- sample(puertas, 1)
  
  # monty muestra una cabra
  if (premio == eleccion){ 
    # en este caso solo hay una puerta que mostrar
    monty <- sample(puertas[-c(premio, eleccion)], 1)
  } else {
    # en este caso se escoge al azar una de dos opciones
    monty <- puertas[-c(premio, eleccion)]
  }
  
  # condicional para cambiar
  if (cambio == TRUE){
    eleccion <- puertas[-c(eleccion, monty)]
  }
  
  if (eleccion == premio){
    return(1)
  } else {
    return(0)
  }
}
juego_monty_hall(cambio=FALSE)

me_quedo <- 0
me_cambio <- 0
for (i in 1:10000){
  me_quedo <- me_quedo + juego_monty_hall(cambio=FALSE)
  me_cambio <- me_cambio + juego_monty_hall(cambio=TRUE)
}
