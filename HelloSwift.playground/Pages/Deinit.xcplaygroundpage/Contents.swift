//: [Previous](@previous)

import Foundation

class Persona {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        
        print("The name \(self.name)")
        
    }
    
}




func calledMethod(){
    
    var Alejito = Persona(name: "Alejo")
    
}

calledMethod()
