//: [Previous](@previous)

import Foundation

class Vehicule {
    
    var temp: Float = 0
    var revolutions: Int = 0
    var currentSpeed: Float = 0
    let maxSpeed: Int
    var alejo: String?
    
    func accelerate() {
        
        func incrementRevolutions() {
            
            self.revolutions += 10
            
        }
        
        currentSpeed += 60
        
    }
    
    func breaks() {
        
        currentSpeed -= 1
        
    }
    
    var calculateTemp: Int {
        
        switch self.revolutions {
            
        case 1...1000:
            
            if self.currentSpeed < 20 {
                
                return 90
                
            }
            
            return 80
            
        case 1001...3000:
            
            if self.currentSpeed < 50 {
                
                return 70
                
            }
            
            return 60
            
        case 3001...4001:
            
            if self.currentSpeed < 100 {
                
                return 50
                
            }
            
            return 40
            
        default:
            return 0
        }
        
    }
    
    init(temp: Float, maxSpeed: Int) {
        
        self.temp = temp
        self.maxSpeed = maxSpeed
        
    }
    
    init(maxSpeed: Int) {
        
        self.maxSpeed = maxSpeed
        
    }
    
    deinit {
        
        currentSpeed = 0
        revolutions = 0
        
    }
    
    
    
}

var mazda: Vehicule = Vehicule(maxSpeed: 200)
mazda.accelerate()
mazda.calculateTemp
//: [Next](@next)

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class PersonaJoven: Person {
    
    override var name: String {
        
        get {
            return "Hola"
        }
        set {
            
        }
        
    }
   
}
