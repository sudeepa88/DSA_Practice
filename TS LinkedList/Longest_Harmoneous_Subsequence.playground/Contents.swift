import Cocoa

//var greeting = "Hello, playground"



var examples = [1,3,2,2,5,2,3,7]



func findLHS(_ nums: [Int]) -> Int {

    let setNum = Set(nums)
    let convertedArray = Array(setNum)
    var dict:[Int:Int] = [:]
    var count = 0
    for i in 0...convertedArray.count - 1 {
        for j in 0...nums.count - 1 {
            if convertedArray[i] == nums[j] {
                count = count + 1
            }
        }
        
        dict[convertedArray[i]] = count
        count = 0
    }
    
    print(dict)
    var maximumValue = 0
    
    for i in dict.keys {
        if let next = dict[i+1] {
            let sum = dict[i]! + next
            if sum > maximumValue {
                maximumValue = sum
            }
        }
    }
    
    
    return maximumValue
    }



let ans = findLHS(examples)


