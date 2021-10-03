# funciones previas
check_canicas <- function(canicas, maximo){
  if (is.na(as.integer(canicas))){
    print('debe ser un numero')
    return(FALSE)
  } else if (as.integer(canicas) < 1 | as.integer(canicas) > maximo){
    print(c('numero entre 1 y ', maximo))
    return(FALSE)
  } else{
    return(TRUE)
  }
}

check_apuesta <- function(canicas){
  if (is.na(as.integer(canicas))){
    print('debe ser un numero')
    return(FALSE)
  } else if (as.integer(canicas) < 0 | as.integer(canicas) > 1){
    print(c('numero entre 0 y 1'))
    return(FALSE)
  } else{
    return(TRUE)
  }
}

# definiendo variables
jugador <- 10
ordenador <- 10
jugamos <- TRUE
turno <- 'jugador'

print('Empieza el juego')
while (jugamos==TRUE){
  print('####### nuevo turno #######')
  print(c('es el turno de: ', turno))
  print(c('canicas jugador:  ', jugador))
  print(c('canicas ordenador: ', ordenador))
  print('--------------')
  while(TRUE){
    canicas <- readline(prompt="Escoge tus canicas: ")
    
    if (check_canicas(canicas, jugador)){
      canicas <- as.numeric(canicas)
      print(c('canicas apostadas: ', canicas))
      break
    } else {
      print('introduce nuevamente el numero')
    }
  }

  print('el otro jugador esta escogiendo sus canicas')
  ocultas <- sample(1:ordenador, size=1)
  
  if (turno == 'jugador'){
    print('listo ahora te toca adivinar')  
  } else if (turno == 'ordenador'){
    print('listo ahora te toca que te adivinen')
  }
  
  if (turno == 'jugador'){
    while(TRUE){
      print('?crees que ordenador tiene canicas pares o impares?')
      apuesta <- readline(prompt="0 para par. 1 para impar: ")
      
      if (check_apuesta(apuesta)){
        apuesta <- as.numeric(apuesta)
        print(c('Has dicho que el otro tiene: ', apuesta))
        break
      } else {
        print('introduce nuevamente el numero')
      }
    }
  } else if (turno == 'ordenador'){
    print('ordenador esta pensando si tienes par o impar')
    apuesta <- sample(0:1, size=1)
    print(c('ha escogido', apuesta, '(0 par, 1 impar)'))
    print('ahora te toca mostrar tus canicas')
    aux <- readline(prompt="escribe cualquier cosa")
  }
  
  if (turno == 'jugador'){
    print(c('ocultas: ',ocultas))
    if (ocultas %% 2 == apuesta){
      print('ganaste. sumas canicas')
      jugador <- jugador + canicas
      ordenador <- ordenador - canicas
      if (jugador>=20){
        print('fin de juego, vives')
        break
      }
    } else {
      print('perdiste. restas canicas')
      jugador <- jugador - ocultas
      ordenador <- ordenador + ocultas
      if (jugador<=0){
        print('fin de juego, mueres')
        break
      }
    } 
  } else if (turno == 'ordenador'){
    print(c('jugador tiene: ', canicas))
    if (canicas %% 2 == apuesta){
      print('perdiste. restas canicas')
      jugador <- jugador - ocultas
      ordenador <- ordenador + ocultas
      if (ordenador>=20){
        print('fin de juego, mueres')
        break
      }
    } else {
      print('ganaste. sumas canicas')
      jugador <- jugador + canicas
      ordenador <- ordenador - canicas
      if (jugador<=0){
        print('fin de juego, vives')
        break
      }
    }
  }
  
  
  # cambio de turno
  if (turno == 'jugador'){
    turno <- 'ordenador'
  } else if (turno == 'ordenador'){
    turno <- 'jugador'
  }
}
  