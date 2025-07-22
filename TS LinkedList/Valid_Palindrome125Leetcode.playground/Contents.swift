import Cocoa

//var greeting = "Hello, playground"

func isPalindrome(_ s: String) -> Bool {
    
    let allowed = "abcdefghijklmnopqrstuvwxyz1234567890"
    let smallCased = s.lowercased()
    var cleaned = ""
    
    for char in smallCased {
        if allowed.contains(char) {
            cleaned.append(char)
        }
    }
    
    let sampleArr = Array(cleaned)
    print("Sample Arr is", sampleArr)
    
    var i = 0
    var j = sampleArr.count - 1
    
    while i != j {
        if sampleArr[i] == sampleArr[j]{
            i = i + 1
            j = j - 1
        } else {
            return false
        }
    }
    
    return true
}



isPalindrome("race a car")



