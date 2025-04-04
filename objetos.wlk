//colores

object rojo {
  method esFuerte() {return true}
  //method esFuerte() = true
}

object verde {
  method esFuerte() {return true}  
}

object celeste {
  method esFuerte() = false  
}

object pardo {
  method esFuerte() = false 
}

object naranja {
  method esFuerte() = true 
}

//materiales

object cobre {
  method brilla() = true
}

object vidrio {
  method brilla() = true
}

object lino {
  method brilla() = false 
}

object madera {
  method brilla() = false 
}

object cuero {
  method brilla() = false
}

//COSAS

object remera {
  method getColor() = rojo
  method getPeso() = 800
  method getMaterial() = lino  
}

object pelota {
  method getColor() = pardo
  method getPeso() = 1300
  method getMateriar() = cuero   
}

object biblioteca {
  method getColor() = verde 
  method getPeso() = 8000
  method getMaterial() = madera  
}

object muneco {
  var peso = 0
  method getPeso() = peso
  method peso(unPeso) {peso = unPeso} 
  method getColor() = celeste
  method getMaterial() = vidrio  
}

object placa {
  var peso = 0 
  var color = rojo
  method getPeso() = peso
  method peso(unPeso) {peso = unPeso}
  method getColor() = color
  method color(unColor) {color = unColor}   
  method getMaterial() = cobre  
}

//MAS COSAS

object arito {
  method getPeso() = 180
  method getColor() = celeste
  method getMaterial() = cobre   
}

object banquito {
  var color = naranja
  method getPeso() = 1700
  method getMaterial() = madera
  method getColor() = naranja 
  method color(unColor) {
    color = unColor
  }
}

object cajita {
  var objetoDentro = arito
  method getColor() = rojo
  method getMaterial() = cobre
  method peso(unPeso){
    peso = unPeso
  }
  method getPeso() = 400 + objetoDentro.getPeso()
  method objetoDentro(unObjeto){
    objetoDentro = unObjeto
  } 
}

