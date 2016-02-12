//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int {
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    
    mutating func cambioDeVelocidad() -> (Int, String){
        let num = self.rawValue
        
        switch num{
            case 0:
                self = .VelocidadBaja
                return (num, "\(Velocidades.Apagado)")
            case 20:
                self = .VelocidadMedia
                return (num, "\(Velocidades.VelocidadBaja)")
            case 50:
                self = .VelocidadAlta
                return (num, "\(Velocidades.VelocidadMedia)")
            case 120:
                self = .VelocidadMedia
                return (num, "\(Velocidades.VelocidadAlta)")
            default:
                return (-1, "Velocidad Desconocida..." )
        }
    }
    
    init(){
        self = .Apagado     //Valor inicial APAGADO
    }
}

class Auto {
    var velocidad = Velocidades()
    
    init (){
        print("Se instanció Auto(): By JCFA ")
    }
}

let au = Auto()

for i in 1...20{
    let (valor, dato) = au.velocidad.cambioDeVelocidad()
    print("\(i) \(valor), \(dato) ")
}

print("Fin de simulación: By JCFA")