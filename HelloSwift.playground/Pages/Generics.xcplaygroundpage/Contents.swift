//: [Previous](@previous)

import Foundation

func swapTwoValues<T>(a: inout T, b: inout T) {
    
    var temp = a
    a = b
    b = temp
    
}

//: [Next](@next)

var num1 = 7
var num2 = 8

swapTwoValues(a: &num1, b: &num2)

print(num1, num2)

struct GradeSystem<Type> {
    
    var deque: Array<Type?> = []
    
    mutating func push( _ newValue: Type ) {
        
        deque.append(newValue)
        
    }
    
    mutating func shift() -> Type? {
            
            return deque.removeFirst()
        
    }
    
    mutating func unshift( _ newValue: Type ) {
         
        deque.insert(newValue, at: 0)
        
    }
    
    mutating func pop() -> Type? {
        
        return deque.removeLast()
        
    }
    
}

var alphabeticalSystem: GradeSystem<String> = GradeSystem()

alphabeticalSystem.push("A")
alphabeticalSystem.push("B")
alphabeticalSystem.push("C")
alphabeticalSystem.push("D")
alphabeticalSystem.push("E")
alphabeticalSystem.push("F")

var numericSystem: GradeSystem<Double> = GradeSystem()

numericSystem.push(1)
numericSystem.push(1.5)
numericSystem.push(2)
numericSystem.push(2.5)
numericSystem.push(3)
numericSystem.push(3.5)
numericSystem.push(4)
numericSystem.push(4.5)
numericSystem.push(5)
numericSystem.shift()

func findIndex<T: Equatable	>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


findIndex(of: 2, in: [1,2,3,4,5,6])

struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }


    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
    func makeIterator() -> Iterator
}

extension Array: Container {}

extension Container {
    func average() -> Double where Item == Int {
        var sum = 0.0
        for index in 0..<count  {
            sum += Double(self[index])
        }
        return sum / Double(count)
    }
    func endsWith(_ item: Item) -> Bool where Item: Equatable {
        return count >= 1 && self[count-1] == item
    }
}
extension Container {
    subscript<Indices: Sequence>(indices: Indices) -> [Item]
            where Indices.Iterator.Element == Int {
        var result: [Item] = []
        for index in indices {
            result.append(self[index])
        }
        return result
    }
}
let numbers = [1260, 1200, 98, 37]
print(numbers.average())
print(numbers.makeIterator())
print(numbers[[1,2,3]])
print(numbers is (any Container))
