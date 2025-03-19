import Cocoa

var greeting = "Hello, playground"


var arr = [0,2,3]

func missingNumber(_ nums: [Int]) -> Int {
    var arr:[Int] = []
    for i in 0...nums.count - 1 {
        arr.append(nums[i])
    }
    arr.sort()
    
    var startingPoint = 0
    var endingPoint = arr.count - 1
    var midpoint:Int = endingPoint/2
    
    
        
        while startingPoint <= endingPoint {
            
            if midpoint < 0 {
                
                return 0
                
            } else {
                
                var value = midpoint
                
                if midpoint > arr.count - 1{
                    
                    return midpoint + 1
                    
                } else {
                    
                    if midpoint == arr.count - 1 {
                        if midpoint == arr[midpoint] {
                            return midpoint + 1
                        } else {
                            return midpoint
                        }
                    } else {
                        
                        
                        if arr[midpoint] > midpoint {
                            endingPoint = midpoint - 1
                            midpoint = startingPoint + ((endingPoint - startingPoint)/2)
                        }else {
                            startingPoint = midpoint + 1
                            midpoint = startingPoint + ((endingPoint - startingPoint)/2)
                        }
                        
                        
                    }
                    
                    
                }
                
            }
            
            //return arr[midpoint] - 1
            
            
        } // while loop ending
    
    print("The starting Index is ", startingPoint)
    print("The ending point is ", endingPoint)
    print("The midpoint is ", midpoint)

    return  midpoint 
}


var result = missingNumber(arr)
print("Result is ", result)
