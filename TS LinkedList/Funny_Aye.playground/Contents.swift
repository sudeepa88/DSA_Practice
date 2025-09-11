import Cocoa

//var greeting = "Hello, playground"

var nums = [1,3,4,2,2]
var nums2 = [3,1,3,4,2]
var nums3 = [3,3,3,3,3]
var nums4 = [1,4,4,2,4]
func findDuplicate(_ nums: [Int]) -> Int {
    
    var notDuplicatedNums = Set(nums)
    var notDuplicatedArr = Array(notDuplicatedNums)
    
    if notDuplicatedArr.count <= 1 {
        return notDuplicatedArr[0]
    } else {
        
        
        var summation_One = 0
        var summation_Two = 0
        
        for i in 0...nums.count - 1 {
            summation_One = summation_One + nums[i]
        }
        
        for i in 0...notDuplicatedArr.count - 1 {
            summation_Two = summation_Two + notDuplicatedArr[i]
        }
        
        
        let diff = summation_One - summation_Two
        let repeated = nums.count - notDuplicatedArr.count
        
        
        return diff / repeated
    }
    
    
}



//func findDuplicate_Two(_ nums: [Int]) -> Int {
//    var seen: [Int] = []
//    
//    for num in nums {
//        if seen.contains(num) {
//            return num
//        }
//        seen.append(num)
//    }
//    
//    return -1 // fallback if no duplicate found
//}



findDuplicate(nums)

findDuplicate(nums2)
findDuplicate(nums3)
findDuplicate(nums4)


