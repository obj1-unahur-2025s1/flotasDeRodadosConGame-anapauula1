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





