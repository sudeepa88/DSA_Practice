import Cocoa

//var greeting = "Hello, playground"



let s = "dvdf"


func lengthOfLongestSubstring(_ s: String) -> Int {
    if s == "" {
        return 0
    } else {
        
        var arrOfCharacter:[Character] = Array(s)
        var emptyArr:[Character] = []
        var twoDArr:[[Character]] = []
        var j = 0
        var i = 0
        var k = 0
        if arrOfCharacter.count == 1 {
            return 1
        } else {
            
            while k <= arrOfCharacter.count - 1 {
                
                
                
                    for i in j...arrOfCharacter.count - 1 {
                        if emptyArr.contains(arrOfCharacter[i]) == false {
                            emptyArr.append(arrOfCharacter[i])
                        } else {
                            twoDArr.append(emptyArr)
                            emptyArr = []
                            j = j+1
                            break
                        }
                    }
                    
                    
                    
                    
                    k = j
                    
               
            }
            print("Printing the 2D Array", twoDArr)
            
        }
        
        
        var maxValue = 0
        for i in 0...twoDArr.count - 1 {
            if maxValue < twoDArr[i].count {
                maxValue = twoDArr[i].count
            }
        }
        
        return maxValue
    }
}

print("Printing 2D", lengthOfLongestSubstring(s))
