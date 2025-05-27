import rodados.*
import pedidos.*
class Dependencia {
    const flota = []
    var property empleados = 0
    const pedidos = #{}
    // el auto que debemos de poner aca debe de ser valido
    // debe estar en nuestra lista de colores validos

    // el color del rodado debe de ser de los colores validos
    method agregarAFlota(rodado) {
        flota.add(rodado)
        }
    method agregarPedido(unPedido){
        pedidos.add(unPedido)
    }
    method quitarPedido(unPedido){pedidos.remove(unPedido)}
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({r=>r.peso()})
    method estaBienEquipada() = 
        self.tieneAlMenosRodados(3) && self.todosVanAlMenosA100()

    method tieneAlMenosRodados(cantidad) = flota.size() >= cantidad
    method todosVanAlMenosA100() = flota.all({r=>r.velocidadMaxima()>=100})
    method capacidadTotalEnColor(color) = 
        self.rodadosDeColor(color).sum({r=>r.capacidad()})
    method rodadosDeColor(color) = flota.filter({r=>r.color() == color})
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({r=>r.velocidadMaxima()})
    method capacidadFaltante() = (empleados - self.capacidadDeLaFlota()).max(0)
    method capacidadDeLaFlota() = flota.sum({r=>r.capacidad()})
    method esGrande() = empleados >= 40 && self.tieneAlMenosRodados(5)

    // ETAPA 3 //
    method cantidadDePasajeros() =
         pedidos.sum({p => p.cantPasajeros()})
        // se lo puedo pedir porque la var tiene property donde el metodo
        // de cant de pasajeros ya esta hecho
    
    method pedidosNoPuedenSerSatifechos()=
        // si no lo puede satisfacer entonces lo agrega
        pedidos.filter({ p=> not self.todosPuedenSatisfacer(p)})
    
    method todosPuedenSatisfacer(unPedido) =
    // hay alguno que puede satisfacer
     flota.any({h => unPedido.puedeSatisfacerUnPedido(h)})

    method todosLosPedidosTienenIncompatible(unColor) =
        pedidos.all({p => p.coloresIncompatibles().contains(unColor) })

    method relajarPedidos(){
        pedidos.forEach({p => p.relajar()})
    }
}
// const pepito = new Corsa(color ="violeta")
// creamos una constante + nombreAuto  + palabra New + class Corsa + variable que falta el valor



