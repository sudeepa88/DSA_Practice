import Cocoa

var greeting = "Hello, playground"

var nums = [1,2,5,5,5,8]
nums.sort()


func letsFindOut( _ nums: inout[Int], _ target: Int) -> [Int] {

    nums.sort()

//    var nums2:[Int] = []
//    nums2 = nums.sort()
    
    var startingPoint = 0
    var endingPoint = nums.count - 1
    var midPoint = endingPoint / 2
    var res:[Int] = []
    
    while startingPoint <= endingPoint {
        if nums[midPoint] == target {
            res.append(midPoint)
            endingPoint = midPoint - 1
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        } else if nums[midPoint] < target {
            startingPoint = midPoint + 1
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        } else if nums[midPoint] > target {
            endingPoint = midPoint - 1
            midPoint = startingPoint + ((endingPoint -  startingPoint)/2)
        }
    }
    
     startingPoint = 0
     endingPoint = nums.count - 1
     midPoint = endingPoint / 2
    
    
    while startingPoint <= endingPoint {
        if nums[midPoint] == target {
            res.append(midPoint)
            startingPoint = midPoint + 1
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        } else if nums[midPoint] < target {
            startingPoint = midPoint + 1
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        } else if nums[midPoint] > target {
            endingPoint = midPoint - 1
            midPoint = startingPoint + ((endingPoint -  startingPoint)/2)
        }
    }
    
    
    return res
}



var value = letsFindOut(&nums, 5)
print("The Value is", value)
