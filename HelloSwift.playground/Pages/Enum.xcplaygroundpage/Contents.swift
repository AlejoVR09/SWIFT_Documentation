enum CompanyPeople {
    
    typealias Person = (name: String, id: Int)
    typealias Worker = (area: String, specialist: Bool)
    typealias Section = (sectionName: String, inCharge: Bool)
    
    case client(Person)
    case techWorker(Person, Worker)
    case administrativeWorker(Person, Worker, Section)
    
    func calculateCharges() -> Int {
        
        switch self {
            
        case .client:
            return 0
            
        case .techWorker:
            return 1
            
        case .administrativeWorker:
            return 2
            
        }
    }
    
    var descriptionOfPerson: String {
        
        switch self {
            
        case .client(let person):
            return "The person called \(person.name)"
            
        case .techWorker(let person, let worker):
            return "The person called \(person.name) is a worker of the \(worker.area) area"
            
        case .administrativeWorker(let person, let worker, let section):
            return "The person called \(person.name) is a worker of the \(worker.area) area and \(section.inCharge ? "is in charge of \(section.sectionName) team" :"is part of the \(section.sectionName) team")"
            
        }
        
    }
    
    
}

let companyWoker: CompanyPeople = .administrativeWorker( (name: "Alejo", id: 1), (area: "Work Experience", specialist: true), (sectionName: "TCBP", inCharge: true))
print(companyWoker.calculateCharges())
print(companyWoker.descriptionOfPerson)

