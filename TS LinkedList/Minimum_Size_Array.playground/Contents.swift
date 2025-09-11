import Cocoa

//var greeting = "Hello, playground"



func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
     
    var count = 1
    var result = 0
    var sizesOfArray:[Int] = []
    var i = 0
    var j = 0
    
    while i < nums.count && j < nums.count{
        result = 0
        if nums[i] == target || nums[j] == target {
            return 1
        } else {
            
            //j = j + 1
            result = result + nums[i]
            count = count + 1
            if result >= target {
                sizesOfArray.append(count)
                result = 0
                 i = i + 1
            } else if result < target {
                j = j + 1
                count = 0 
                result = result + nums[j]
                
            }
            
            
        }
        
    }

    return count
    }






