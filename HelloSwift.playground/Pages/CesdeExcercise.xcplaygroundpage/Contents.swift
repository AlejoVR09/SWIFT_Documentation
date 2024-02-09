//: [Previous](@previous)

import Foundation

protocol validIdentificationProtocol {
    
    var identificationMethod: IdentificationMethod { get set }
    
    mutating func verify()
    
}

enum IdentificationMethod {
    
    case CC(String)
    case CE(Int)
    case TI(String)
    case CET(Int)
    
}

struct Student: validIdentificationProtocol{
    
    
    
}


//: [Next](@next)
