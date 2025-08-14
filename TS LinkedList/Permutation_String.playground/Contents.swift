import Cocoa

//var greeting = "Hello, playground"


func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    
    var assignPrimeNumbers: [Character: Int] = [
        "a": 2,
        "b": 3,
        "c": 5,
        "d": 7,
        "e": 11,
        "f": 13,
        "g": 17,
        "h": 19,
        "i": 23,
        "j": 29,
        "k": 31,
        "l": 37,
        "m": 41,
        "n": 43,
        "o": 47,
        "p": 53,
        "q": 59,
        "r": 61,
        "s": 67,
        "t": 71,
        "u": 73,
        "v": 79,
        "w": 83,
        "x": 89,
        "y": 97,
        "z": 101
    ]
    
    let windowLength = s1.count
    print("S1 Count is", windowLength)
    
    var firstMultiPlicationResult = 1
    
    for i in s1 {
        firstMultiPlicationResult = firstMultiPlicationResult * (assignPrimeNumbers[i] ?? 1)
    }
    
    print("Multiplication Value S1: ", firstMultiPlicationResult )
    
    var secondMultiplicationResult = 1
    
    var indexValue = 0
    
    while indexValue < s2.count {
        
        
        
        for i in indexValue...windowLength - 1 {
            secondMultiplicationResult = secondMultiplicationResult * (assignPrimeNumbers[i] ?? 1)
        }
        indexValue = indexValue + 1
    }
    
        return false
    }




let s1 = "ab"
let s2 = "eidbaooo"


checkInclusion(s1, s2)



