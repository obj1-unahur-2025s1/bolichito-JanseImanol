import wollok.vm.*
import objetos.*
import bolichito.*


object rosa {
  method leGusta(unaCosa){
    return unaCosa.getPeso() <= 2000
  }
}

object estefania {
  method leGusta(unaCosa){
    return unaCosa.getColor().esFuerte() 
  }
}

object luisa {
  method leGusta(unaCosa) {
    return unaCosa.getMaterial().brilla()
  }
}

object juan {
  method leGusta(unaCosa){
    //! == not
    return !unaCosa.getColor().esFuerte() or unaCosa.getPeso().between(1200, 1800)
  }
}