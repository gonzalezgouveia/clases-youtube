juego_canicas <- function(){
  jugador <- 10
  ordenador <- 10
  jugamos <- TRUE
  turno <- sample(c('jugador','ordenador'), size=1)
  
  while (jugamos==TRUE){
    canicas <- sample(1:jugador, size=1)
    ocultas <- sample(1:ordenador, size=1)
    
    if (turno == 'jugador'){
      apuesta <- sample(0:1, size=1)
    } else if (turno == 'ordenador'){
      apuesta <- sample(0:1, size=1)
    }
    
    if (turno == 'jugador'){
      if (ocultas %% 2 == apuesta){
        jugador <- jugador + canicas
        ordenador <- ordenador - canicas
        if (jugador>=20){
          return(1)
          break
        }
      } else {
        jugador <- jugador - ocultas
        ordenador <- ordenador + ocultas
        if (jugador<=0){
          return(0)
          break
        }
      } 
    } else if (turno == 'ordenador'){
      if (canicas %% 2 == apuesta){
        jugador <- jugador - ocultas
        ordenador <- ordenador + ocultas
        if (ordenador>=20){
          return(0)
          break
        }
      } else {
        jugador <- jugador + canicas
        ordenador <- ordenador - canicas
        if (ordenador<=0){
          return(1)
          break
        }
      }
    }
    if (turno == 'jugador'){
      turno <- 'ordenador'
    } else if (turno == 'ordenador'){
      turno <- 'jugador'
    }
  }
}

suma_ganados <- 0
vec_ganados <- c()
for (i in 1:100){
  suma_ganados <- suma_ganados + juego_canicas()
  vec_ganados <- append(vec_ganados, suma_ganados/i)
}
plot(vec_ganados, ylim=c(0,1), type='l')
abline(h=0.5, col='red', lty='dashed')
