import Cocoa

var greeting = "Hello, playground"

func isBadVersion( _ value:Int) -> Bool {
    if  value >= 5 {
        return true
    } else {
        return false
    }
}


func firstBadVersion(_ n: Int) -> Int {
    var startingPoint:Int = 1
    var endingPoint: Int = n
    var midPoint = n/2
    
    while startingPoint <= endingPoint {
        if isBadVersion(midPoint) {
            endingPoint = midPoint - 1
            midPoint = startingPoint + ((endingPoint -  startingPoint) / 2)
        } else {
            startingPoint = midPoint + 1
            midPoint = startingPoint + ((endingPoint -  startingPoint) / 2)
        }
    }
    
    print("The first Value is", startingPoint)
    print("Ending value is ", endingPoint)
    print("Midpoint value is", midPoint)
    
    return midPoint
}

var myValue = firstBadVersion(1)

print("The First Bad Version is", myValue)

