// con el property automaticamente le pdoemos preguntar el color
// y no hace falta hacer el metodo
// tambien le podemos de cambiar el color con chevroletCorsa.color()
class Corsa{
    // si quisieramos agregar otro corsa
    var property color 
    method capacidad() = 4
    method peso() = 1300
    method velocidadMaxima() = 150
}
// palabra para crear objetos con respecto a una clase
// new.Corsa() permite poner atributos sin inicializar
// new.Corsa(color = "Rojo") le tenemos que pasar el valor del atributo

class Kwid{
    var property tieneTanqueAdicional 
    // no lo inicializo porque no dice que sale de la fabrica
    // si tiene o no el tan que ADICIONAL
    method capacidad() = if(tieneTanqueAdicional) 3 else 4
    method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0
    // se le debe sumar al peso si recien tiene el peso
    method color() = "Azul"
    // los colores por ahora son string no tiene tratamiento distinto
    // se lo pone como objetos cuando debemos de tomar decisiones en si
    // para eso utilizamos los booleanos
}
// si hay una solo trafi lo que hay es un objeto
// porque es un objeto unico
object trafic{
    var property interior = comodo 
    var property motor = pulenta
    // le delego la obligacion a otro objeto
    method capacidad() = interior.capacidad()
    // la capacidad depende del objeto que este dentro de la variable
    method velocidadMaxima() = motor.velocidad()
    //  la velocidad maxima depende de la que permite el motor
    method color() = "Blanco"
    // la trafic es de color blanco independientemente del interior
    // y del motor que tengamos
    method peso(){
        // el peso depende de todo esto
        return 4000 + interior.peso() + motor.peso()
        // de la base que arranca desde 400 mas el interior mas el peso
    }
}
class Especial{
    // todos los autos van a ser dependiendo de x cosa
    var property capacidad 
    var property velocidadMaxima
    var property peso 
    var property color 
    // depende del tipo de auto que nosotros queremos crear
}
object comodo{
    method capacidad() = 5
    method peso() = 700
}
object popular{
    method capacidad() = 12
    method peso() = 1000
}
object pulenta{
    // pulenta y bataton deben de comprender los mismos mensajes
    method peso() = 800
    method velocidad() = 130
}
object bataton{
    // por eso ambos tienen los mismos mensajes
    method peso() = 500
    method velocidad() = 80
}




