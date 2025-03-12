import Cocoa

var greeting = "Hello, playground"


func letsFindOut(nums: inout [Int], target: Int) -> [Int] {
    nums.sort()
    
    var startingPoint = 0
    var endingPoint = nums.count - 1
    var midPoint = endingPoint / 2
    var res: [Int] = []
    
    // First search - moving left
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
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        }
    }
    
    // Second search - moving right
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
            midPoint = startingPoint + ((endingPoint - startingPoint)/2)
        }
    }
    
    // Convert to Set to remove duplicates, then back to Array
    let uniqueIndices = Set(res)
    return Array(uniqueIndices).sorted()
}

var nums = [1, 2, 5, 5, 5, 8]
var value = letsFindOut(nums: &nums, target: 5)
print("The Value is", value)
