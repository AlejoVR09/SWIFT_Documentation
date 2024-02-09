//: [Previous](@previous)

import Foundation

protocol TalentManagerDelegate: AnyObject {
//    
//    func startMeeting(_ generationName: Generations)
//    func developMeeting(_ generationName: Generations)
//    func endMeeting(_ generationName: Generations)
    func talentManager(_ talentManager: TalentManagerProtocol, startMeetingWith generationName: String)
    func talentManager(_ talentManager: TalentManagerProtocol, developMeetingWith generationName: String)
    func talentManager(_ talentManager: TalentManagerProtocol, endMeetingWith generationName: String)
}


protocol TalentManagerProtocol {
    
    var generationName: String { get }
    
    init(_ timeToMeet: Int, generationName: String)
    
    func begin()
    
}


class TalentManager: TalentManagerProtocol {
    
    var timeWeekly: Int
    var generationName: String
    
    required init(_ timeToMeet: Int, generationName: String) {
        
        self.timeWeekly = timeToMeet
        self.generationName = generationName

        
    }
    
    weak var delegate: TalentManagerDelegate?
    
    func begin() {
        
        self.delegate?.talentManager(self, endMeetingWith: self.generationName)
        self.delegate?.talentManager(self, startMeetingWith: self.generationName)
        self.delegate?.talentManager(self, developMeetingWith: self.generationName)
        
    }
    
}

class TalentManagerInCharge: TalentManagerDelegate {
    func talentManager(_ talentManager: TalentManagerProtocol, startMeetingWith generationName: String) {
        print("inicio")
    }
    
    func talentManager(_ talentManager: TalentManagerProtocol, developMeetingWith generationName: String) {
        print("Desarrollo")
    }
    
    func talentManager(_ talentManager: TalentManagerProtocol, endMeetingWith generationName: String) {
        print("Fin")
    }
    
    
//    func startMeeting(_ generationName: Generations) {
//        
//        
//        
//    }
//    
//    func developMeeting(_ generationName: Generations) {
//        
//        print("Desarrollo")
//        
//    }
//    
//    func endMeeting(_ generationName: Generations) {
//        
//        print("Fin")
//        
//    }
    
}

var Maverick = TalentManager(11, generationName: "Maverick")
var Capi = TalentManagerInCharge()

Maverick.delegate = Capi
Maverick.begin()


//: [Next](@next)
