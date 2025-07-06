import Cocoa

//var greeting = "Hello, playground"





func majorityElement(_ nums: [Int]) -> Int {
    var sampleSet = Set(nums)
    var matchingArray = Array(sampleSet)
    
    var savingCounts:[Int] = []
    
    var savingCountValue: [Int : Int] = [:]
    
    for i in 0...matchingArray.count - 1 {
        var count = 0
        
        for j in 0...nums.count - 1 {
            if matchingArray[i] == nums[j] {
                count = count + 1
            }
        }
        
        savingCounts.append(count)
        savingCountValue[matchingArray[i]] = count
    }
    
    
    guard let maxPair = savingCountValue.max(by: { a, b in a.value < b.value }) else {
            return -1 // or handle the case appropriately
        }
    return maxPair.key
}


func majorityElement_II(_ nums: [Int]) -> [Int] {
    
    var maxValue:Int = (nums.count / 3)
    
    var emptyArray:[Int] = []
    
    
    var sampleSet = Set(nums)
    var matchingArray = Array(sampleSet)
    
    var savingCounts:[Int] = []
    
    var savingCountValue: [Int : Int] = [:]
    
    for i in 0...matchingArray.count - 1 {
        var count = 0
        
        for j in 0...nums.count - 1 {
            if matchingArray[i] == nums[j] {
                count = count + 1
            }
        }
        
        savingCounts.append(count)
        savingCountValue[matchingArray[i]] = count
        
//        for j in 0...nums.count - 1 {
//            if
//        }
        if count > maxValue {
            emptyArray.append(matchingArray[i])
        }
        
    }
    
    

   
    return emptyArray
}



var testValue = majorityElement([1,2])
