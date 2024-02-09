import Foundation

struct ChessPiece{
    
    let type: TypePiece
    let color: Color
    
    enum Color: String {
        
        case white = "White", black = "Black"
        
    }
    
    enum TypePiece: String {
        
        case king, queen, rock, bishop, knight, pawn
        
        struct num {
            
            let number: Int
            
        }
        
        var number: num {
            
            switch self {
                
                case .king: return num(number: 1)
                case .queen: return num(number: 1)
                case .rock: return num(number: 2)
                case .bishop: return num(number: 2)
                case .knight: return num(number: 2)
                case .pawn: return num(number: 8)
                
            }
            
        }
        
    }
    
    var description: String {
        
        if type.number.number == 1 {
            
            return "There is \(type.number.number) of the piece called \(type.rawValue) in the board"
            
        }
        
        return "There are \(type.number.number) of the piece called \(type.rawValue) in the board"
        
    }
    
}

//let chessPieceKing = ChessPiece(type: .pawn, color: .white)

//chessPieceKing.description

struct BlackJack {
    
    let suit: Suit, rank: Rank
    
    enum Suit: String {
        
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
        
    }
    
    enum Rank: Int {
        
        case two, three, four, five, six, seven, eight, nine, ten
        case ace, king, queen
        
        struct Value {
                
            let firstValue: Int
            let secondValue: Int?
            
        }
        
        var values: Value {
            
            switch self {
                
            case .ace:
                return Value(firstValue: 1, secondValue: 10)
                
            case .king, .queen:
                return Value(firstValue: 10, secondValue: nil)
                
            default:
                return Value(firstValue: self.rawValue + 2, secondValue: nil)
                
            }
            
        }
        
    }
    
    var description: String {
        
        var output = "The card belongs to the rank \(suit.rawValue) "
        output += "it has the a value of \(rank.values.firstValue)"
        
        if let secondValue = rank.values.secondValue {
            
            output += "and also the value of \(secondValue)"
            
        }
        
        return output
        
    }
    
}

let card1 = BlackJack(suit: .spades, rank: .ace)
card1.description
card1.rank.values

struct observerTest {
    
    var did: Int = 0 {
        willSet {
            
            print(newValue)
            
        }
        didSet {
            
            did = (oldValue - did)
            
        }
        
    }
    
}


var observer: observerTest = observerTest();

observer.did = 1
