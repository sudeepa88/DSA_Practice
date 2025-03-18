import Cocoa

var greeting = "Hello, playground"


var arr:[Character] = ["c","f","g","i","j","k"]

func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        
    var start = 0
    var ending = letters.count - 1
    var midpoint = ending / 2
    
    while start <= ending {
        if letters[midpoint] > target {
            //start = midpoint + 1
            ending = midpoint - 1
            midpoint = start + ((ending - start) / 2)
        } else {
            
                //ending = midpoint - 1
            start = midpoint + 1
                midpoint = start + ((ending - start) / 2)
            
        }
    }
    

    print("start", start)
    print("Mid", midpoint)
    print("End",ending)
    
    if start > letters.count - 1 {
        return letters[0]
    }
    
    return letters[start]
    }


var o = nextGreatestLetter(arr, "j")

print("Hello", o)

