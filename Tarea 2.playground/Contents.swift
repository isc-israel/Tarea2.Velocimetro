//: Tarea #2: Mini Reto 2 ( Velocímetro de un automóvil )

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial: Velocidades ) {
        self = .Apagado
    }
}

let apagado = Velocidades.Apagado.rawValue
let baja = Velocidades.VelocidadBaja.rawValue
let media = Velocidades.VelocidadMedia.rawValue
let alta = Velocidades.VelocidadAlta.rawValue

let cadenaApagado = "Apagado"
let cadenaBaja = "Velocidad Baja"
let cadenaMedia = "Velocidad Media"
let cadenaAlta = "Velocidad Alta"

class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {

        let ciclo = 1...20
        for id in ciclo {
            
            switch id {
            case 1:
                print( "\(Velocidades.Apagado.rawValue), \(cadenaApagado)" )
            case 2,6,10,14,18:
                print( "\(Velocidades.VelocidadBaja.rawValue ), \(cadenaBaja)" )
            case 3,5,7,9,11,13,15,17,19:
                print( "\(Velocidades.VelocidadMedia.rawValue), \(cadenaMedia)" )
            case 4,8,12,16,20:
                print( "\(Velocidades.VelocidadAlta.rawValue), \(cadenaAlta)" )
            default:
                print( "\(Velocidades.Apagado.rawValue), \(cadenaApagado)" )
                
            let impresion = ( Velocidades.Apagado.rawValue, cadenaApagado )
            return impresion
            }

        }
        let impresion = ( apagado, cadenaApagado )
        return (impresion )
    }
}

var auto = Auto()
auto.cambioDeVelocidad()
