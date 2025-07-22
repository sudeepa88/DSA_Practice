import Cocoa

//var greeting = "Hello, playground"


func addBinary(_ a: String, _ b: String) -> String {
        
    let number1 = Int(a)
    let number2 = Int(b)
    
    let summation = number1! + number2!
    
    //let makeItArray = Array(arrayLiteral: summation)
    
    let makingItString = String(summation)
    
    var emptyArrayChar:[String] = []
    
    for i in makingItString {
        emptyArrayChar.append(String(i))
    }
    
    print("make it Array ", emptyArrayChar)
    
    var i = emptyArrayChar.count - 1
    var carry = 0
    var finalResult = ""
    
    while i >= 0 {
        print(emptyArrayChar[i])
        
        if emptyArrayChar[i] == String(1) {
            var resultDot = 1 + carry
            finalResult = String(resultDot) + finalResult
        } else if emptyArrayChar[i] == String(0) {
            var resultDot = 0 + carry
            finalResult = String(resultDot) + finalResult
        } else if emptyArrayChar[i] == String(2) {
            var resultDot = 10 + carry
            finalResult = String(resultDot) + finalResult
        }
        
        i = i - 1
    }
    
    return ""
    }


addBinary("1010", "1011")
