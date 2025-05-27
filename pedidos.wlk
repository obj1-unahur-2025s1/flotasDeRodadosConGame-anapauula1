import rodados.*
import dependencia.*
class Pedido{
    var property distanciaARecorrer 
    var property tiempoMaximo 
    var property cantPasajeros
    const property coloresIncompatibles = #{}
    // le ponemos como property para que nos incluya
    // el metodo setter y getter
    method intialize(){
        if(not distanciaARecorrer.between(1,1000)){
            // si la distancia no esta entre estos numeros entonces
            // tirar un error
            self.error(distanciaARecorrer.toString()  + 'No es un valor valido')
        }
        if(not tiempoMaximo.between(1,100)){
            self.error(tiempoMaximo.toString()  + 'No es un valor valido')
        }
        if(not cantPasajeros.between(1,100)){
            self.error(cantPasajeros.toString()  + 'No es un valor valido')
        }
    }
    method agregarColorIncompatible(unColor){
        coloresIncompatibles.add(unColor)
    }
    method velocidadaRequerida(){
        return distanciaARecorrer / tiempoMaximo
    }
    method puedeSatisfacerUnPedido(unAuto){
        self.velocidadMayorALaRequerida(unAuto)
        self.capacidadDelAuto(unAuto)
        self.esColorIncompatible(unAuto)
    }
    method acelerar(){tiempoMaximo = 1.max(tiempoMaximo - 1)}
    // validamos que nunca va a bajar de uno
    // variable = al nuevo cambio
    method relajar(){tiempoMaximo += 1}
    method velocidadMayorALaRequerida(unAuto) =  unAuto.velocidadMaxima() > tiempoMaximo * 10
    method capacidadDelAuto(unAuto) =  cantPasajeros <= unAuto.capacidad()
    method esColorIncompatible(unAuto) = self.coloresIncompatibles().contains(unAuto.color())
}
