 import PlaygroundSupport

/*
 Arrays
 */
//var array : [Int] = Array(repeating: 1, count: 2)
//array.append(1)
//array.remove(at: 1)
func addingUpItemsFromAnArray(_ array: [Int]) -> Int{
    var sum: Int = 0;
    for element in array {
        sum = sum + element;
    }
    return sum;
}
  
func findCommonElementBetweenArray1(_ array1: [Int], AndArray2 array2: [Int]) -> Int{
    var sum: Int = 0;
    
    if array1.count > array2.count {
        var count: Int = 0;
        for element in array2 {
            if element == array1[count]{
                sum+=1;
                print(array1[count])
            }
            count+=1
        }
        
    }
    else{
        for element in array1 {
            var count: Int = 0;
            if element == array2[count]{
                sum+=1;
                print(array1[count])		
            }
            count+=1
        }
    }
    
    return sum;
    
}

func checkIndexOfArray(_ array: [Int]) -> Bool{
    if array.count > 1 {
        if(array.first == 5 || array.last == 5){
            return true;
        }
        return false
    }
    else {
        return false;
    }
    
}

func compareFirstAndThirdOfAnArray(_ arr: [Int]) -> Bool {
    if arr.count >= 3 {
        if arr[0] > arr[2] {
            return true;
        }
        return false;
    }
    return false;
}

func checkNumberOf1And3InArray(_ arr: [Int]) -> (Int, Int) {
    var one = 0;
    var three = 0;
    
    for element in arr {
        if element == 1 {
            one += 1;
            continue;
        };
        
        if element == 3 {
            three += 1;
            continue;
        }
    }
    return (one, three);
}

//let array1: [String]()
let array2 = [Int]()
let array3: [Int] = Array(repeating: 1, count: 3)
let array4: [Int] = [1,2,3,4,5,6,7,8];
let array5: [Int] = [6,2,4,4,5,9];
let array6: [Int] = [1,3,1,1,1,3];

//checkNumberOf1And3InArray(array6)
//compareFirstAndThirdOfAnArray(array5)
//checkIndexOfArray(array4)
//findCommonElementBetweenArray1(array, AndArray2:array2)
//addingUpItemsFromAnArray(array4);

/*
 Dictionaries
 */

let dict: Dictionary<Bool, Any> = [true : { print(1 + 2) }, false : { print(1 + 3) }];

if let key = dict[true]{
    key
}

var stockTickers: [String: String] = ["APPL" : "Apple Inc", "HOG": "Harley-Davidson Inc", "BOOM": "Dynamic Materials", "HEINY": "Heineken", "BEN": "Franklin Resources Inc"]

stockTickers["WORK"] = "Slack Technologies Inc"
stockTickers["BOOM"] = "DMC Global Inc"

print(stockTickers["WORK"]!)
print(stockTickers["BOOM"]!)

print(stockTickers.keys)
print(stockTickers.values)
stockTickers.updateValue("Slack", forKey: "WORK")

/*
Operators
 */
var test = true ? 1 : 2;
print(test)

var test1 = true ? {print(2)} : {print(4)}

var a = 2;
print(-a)

/**
 Strings
 */

var string: String = "Hell"

for element in string.indices {
    //print(string[element])
}

string.insert("o", at: string.endIndex)
//print(string)

string.insert(contentsOf: "Alejo", at: string.endIndex)
//print(string)
print(string.index(string.endIndex, offsetBy: -7))
print(string.index(before: string.endIndex))

string.remove(at: string.index(before: string.endIndex))
//print(string)

var range = string.index(string.endIndex, offsetBy: -6)..<string.endIndex
string.removeSubrange(range)


/*
 Optional
 */

var option : Int? = 1;

if let option1 = option {
    //print(option1)
}
else
{
    //print("false")
}

if option != nil {
    //print(option!)
}

//let option1 = option ? print(0) : print(1)

func testing(option: Int?) -> Bool {
    
    guard let option2 = option else {
        return false
    }
    return true
}

//print(testing(option: option))
	
/*
 Sets
 */
let set1: Set<Int> = [1,2,3,4,5]
let set2: Set<Int> = [3,4,5,6,7,8]
set1.sorted()
func countingCommonItemsFromSet1(_ set: Set<Int>, AndSet2 set2: Set<Int>){
    var newSet: Set<Int> = set.intersection(set2)
    for element in newSet{
        print(element)
    }
}

func symmetricDifferenceBetweenSet1(_ set1: Set<Int>, AndSet2 set2: Set<Int>){
    let newSet: Set<Int> = set1.symmetricDifference(set2)
    for element in newSet{
        print(element)
    }
}
symmetricDifferenceBetweenSet1(set1, AndSet2: set2)
//countingCommonItemsFromSet1(set1, AndSet2: set2)

/*
 
Functions
 */

func nested(op: Bool)-> (Int, Int)-> Int {
    func sum(num1: Int, num2: Int)->Int{
            return num1 + num2
    }
    
    func rest(num1: Int, num2: Int)-> Int{
        return num1 - num2
    }
    
    return op ? sum : rest
}

let operation = nested(op: false)
print(operation( 1, 2 ))

/*
 Class y struc
 */

/*
 
 Functions
    /*
     Functions parameters
     The parameters in a functions have an argument label and a parameter name, the argument label is used when the function is called, by default the parameter name is used as argument label
     this help the functions to be more expressive
     For omitting the parameter label use _ and the parameter name
     For using default value parameter initialize the parameter after the type declaretion, for making easy to recongnize the functions
     declare this parameters after the non-initialized parameters
     For using functions as parameter write functions type in the parameters zone, this enables you to leave some aspects of function's implementation to the function caller
     The functions parameter are constan by default what means that they cannot be changed in the functions execution, for making this happen you can use in-out parameter
     writing inout before the parameter type, in this case you cannot pass as argument a constant just variables, using & before the argument/variable name
     Variadic parameter are used for specify that the parameter can be passed varying number of values
     */
    /*
     Functions return types
     For returning a functions type of another function write functions type after the return -> arrow
     For returning multiple values from a function use tuples, if you are assure that the return tuple is going to contain valid info use optional tuple returning using the ? sign after the
     tuple type final parenthesis
     
     */
    /*
     Nested functions are the ones that are enclosed by another functions, this means that are hidden from the outside scopes but can still be called in their scope
     */
 */

func name(_ name: String){
    print(name)
}


print(name("Alejo"))

