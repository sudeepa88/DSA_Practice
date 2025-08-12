import Cocoa


//var greeting = "Hello, playground"


var trapWater = [0,1,0,2,1,0,1,3,2,1,2,1]
//              [0,1,2,3,4,5,6,7,8,9,10,11]


func trap(_ height: [Int]) -> Int {
    
    var count = 0
    var heighestIndex = 0
    var highestWall = 0
    
    
    for i in 1...height.count - 1 {
        if height[i] > highestWall {
            highestWall = height[i]
            heighestIndex = i
        }
    }
    
    // Counting Water from left side till maxLevel
    
    var leftMax = 0
    for i in 0..<heighestIndex {
        if height[i] > leftMax {
            leftMax = height[i]
        }
        
        let waterAtThatPosition = leftMax - height[i]
        
        count = count + waterAtThatPosition
    }
    
    //Counting Water from rightMost to maxLevel
    var rightMax = 0
    var i = height.count - 1
    while i > heighestIndex {
        
        if height[i] > rightMax {
            rightMax = height[i]
        }
        let waterAtThatPosition = rightMax - height[i]
        count = count + waterAtThatPosition
        
        i = i - 1
    }
    
    print("Total Water Count", count)
    return count
}



trap(trapWater)


