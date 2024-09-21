object neo {

    var energia = 100

    method energia() = energia

    method saltar(){
        energia = energia /2

    } 

    method vitalidad() = energia / 10 
    method esElegido() = true 
}


object morfeo {

    var estaDescansando = true
    var vitalidad = 8
    

    method saltar(){
        vitalidad = 0.max(vitalidad - 1)
        estaDescansando = not estaDescansando
    } 
    
    method vitalidad() = vitalidad
    method esElegido() = false 
    method estaDescansando() = estaDescansando 
}


object trinity {
    method vitalidad() = 0

    method esElegido() = false

    method saltar() {
      
    } 

  
}