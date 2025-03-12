import Cocoa

var greeting = "Hello, playground"


func gettinroot(_ x: Int) -> Int {
    var startingpoint:Int = 1
    var endingPoint:Int = x
    var midPoint:Int = endingPoint/2
    
    var result = 0
    
    if x == 0 || x == 1 {
            return x
        }

    
    while startingpoint <= endingPoint {
        var theValue = midPoint * midPoint
        
        if theValue < x {
            result = midPoint
            startingpoint = midPoint + 1
            midPoint = startingpoint + ((endingPoint - startingpoint)/2)
            
        } else if theValue > x {
            endingPoint = midPoint - 1
            midPoint = startingpoint + ((endingPoint - startingpoint)/2)
            
        } else if theValue == x {
           
            result = midPoint
            return midPoint
        }
    }
    
    return result
}


var theValue = gettinroot(125)
print("The Value is ", theValue)
