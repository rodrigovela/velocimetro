//: Playground - noun: a place where people can play

import UIKit

/* SEMANA 3 CURSO SWIFT
 AUTOR. RODRIGO VELAZQUEZ
 JULIO 2016
 
 PROYECTO. VELOCÍMETRO DIGITAL
 */

//Enumeracion Velocidades y sus respectivos valores

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){   //Inicializador
        self = velocidadInicial
    }
}

//Clase Auto

class Auto {
    //Atributo
    var velocidad: Velocidades //variable de tipo Velocidades
    
    init(){ //Inicializador
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)  //Asigna velocidad en Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) { //Funcion de cambio de velocidad
        
        var mensaje = " "
        
        switch velocidad { //Switch que recibe una enumeracion
            
        case .Apagado:  //Caso apagado
            velocidad = .VelocidadBaja  //Actualiza a la siguiente velocidad
            mensaje = "Velocidad Baja"  //Actualiza la etiqueta
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            mensaje = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        default:
            mensaje = "Apagado"
        }
        
        let salida = (velocidad.rawValue, mensaje)  //Retorna la velocidad y el mensaje
        
        return salida
    }
    
}

var autonuevo = Auto()  //Instancia de la clase Auto
print("\(autonuevo.velocidad.rawValue)\tApagado")   //Valores iniciales desplegados

for i in 0..<20{    //iteraciones de cambios de velocidad
 let cambio = autonuevo.cambioDeVelocidad()
    print("\(cambio.actual)\t\(cambio.velocidadEnCadena)")
}

