import rodados.*
class Pedidos{
    var property distanciaARecorrer 
    var property tiempoMaximo 
    var property cantPasajeros
    const listaColoresIn = #{}
    method agregarColor(unColor){
        listaColoresIn.add(unColor)
    }
    method velocidadaRequerida(){
        return distanciaARecorrer / tiempoMaximo
    }
    method coloresIncompatibles() = listaColoresIn
    method puedeSatisfacerUnPedido(unAuto){
        self.velocidadMayorALaRequerida(unAuto)
        self.capacidadDelAuto(unAuto)
        self.esColorIncompatible(unAuto)
    }
    method acelerar(){tiempoMaximo -=1}
    method relajar(){tiempoMaximo += 1}
    method velocidadMayorALaRequerida(unAuto) =  unAuto.velocidadMaxima() > tiempoMaximo * 10
    method capacidadDelAuto(unAuto) =  cantPasajeros <= unAuto.capacidad()
    method esColorIncompatible(unAuto) = self.coloresIncompatibles().contains(unAuto.color())
}
