import objetos.*
import personas.*

object bolichito {
  var objetoVidriera = pelota
  var objetoMostrador = remera

  method objetoEnMostrador(objetoPoner){
    objetoMostrador = objetoPoner
  }

  method objetoEnVidriera(objetoPoner) {
    objetoVidriera = objetoPoner
  }

  method esBrillante() = objetoVidriera.material().brilla() 
  and objetoMostrador.material().brilla()

  method esMonocromatico() = objetoVidriera.getColor() == objetoMostrador.getColor()

  method estaEquilibrado() = objetoMostrador.getPeso() > objetoVidriera.getPeso()

  method tieneAlgoDeColor(unColor) = objetoMostrador.getColor() == unColor or
  objetoVidriera.getColor() == unColor

  method puedeMejorar() = !self.esMonocromatico() or !self.estaEquilibrado()

  method puedeOfrecerAlgo(unaPersona) = unaPersona.leGusta(objetoMostrador) or
  unaPersona.leGusta(objetoVidriera)    

  method intercambiarObjetos() {
    const aux = objetoMostrador
    self.objetoEnMostrador(objetoVidriera)
    self.objetoEnVidriera(aux)
  }
}
