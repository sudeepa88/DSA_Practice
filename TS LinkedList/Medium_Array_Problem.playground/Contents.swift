import Cocoa

//var greeting = "Hello, playground"



var arr:[Int] = [2,1,1,2,]

// 2 + 5
// 2 + 1 + 5 = 8
// arr[0] + arr[2] = 3
// arr[0] + arr[3] = 4
func findMaxRobbery(_ nums:[Int]) -> Int {
    
    
    if nums.count == 1 {
        var u = 0
        return nums[0]
    } else {
        
        var sample1:[Int] = []
        var sample2:[Int] = []
        var i = 0
        var test = 0
        while i < nums.count && test < nums.count{
            if nums[i] < nums[test] {
                sample1.append(nums[i])
            } else {
                sample1.append(nums[test])
            }
            i = i + 2
            test = i + 1
        }
        
        
        
        var j = 1
        
        while j < nums.count {
            sample2.append(nums[j])
            j = j + 2
        }
        
        
        
        var result1 = 0
        var result2 = 0
        for l in 0...sample1.count - 1 {
            result1 = result1 + sample1[l]
        }
        
        for k in 0...sample2.count - 1 {
            result2 = result2 + sample2[k]
        }
        
        print("Result 1-->", result1)
        print("Result 2-->", result2)
        
        if result1 > result2 {
            return result1
        }  else {
            return result2
        }
    }
}



var gemo = findMaxRobbery(arr)


//var example?

func findMaxiMumRobbery(_ nums:[Int]) -> Int {
    var evenSum = 0
    var oddSum = 0
    
    for i in 0...nums.count - 1 {
        if i % 2 == 0 {
            evenSum = evenSum + nums[i]
            if oddSum > evenSum {
                evenSum = oddSum
            }
        } else {
            oddSum = oddSum + nums[i]
            if evenSum > oddSum {
                oddSum = evenSum
            }
        }
    }
    
    if evenSum > oddSum {
        return evenSum
    } else {
        return oddSum
    }
}


var letsGoForRobbery = findMaxiMumRobbery(arr)



var nums = [2,3,2]


func findMaxiMumRobberyTwoAnother(_ nums:[Int]) -> Int {
    var evenSum = 0
    var oddSum = 0
    
    
    var evenSumOne = 0
    var oddSumOne = 0
    
    var evenSumTwo = 0
    var oddSumTwo = 0
    
    
    if nums.count == 1 {
        return nums[0]
    } else {
        
        
        for i in 0...nums.count - 2 {
            if i % 2 == 0 {
                evenSumOne = evenSumOne + nums[i]
                if oddSumOne > evenSumOne {
                    evenSumOne = oddSumOne
                }
            } else {
                oddSumOne = oddSumOne + nums[i]
                if evenSumOne > oddSumOne {
                    oddSumOne = evenSumOne
                }
            }
        }
        
        
        for i in 1...nums.count - 1 {
            if i % 2 == 0 {
                evenSumTwo = evenSumTwo + nums[i]
                if oddSumTwo > evenSumTwo {
                    evenSumTwo = oddSumTwo
                }
            } else {
                oddSumTwo = oddSumTwo + nums[i]
                if evenSumTwo > oddSumTwo {
                    oddSumTwo = evenSumTwo
                }
            }
        }
        
        
        if evenSumOne > evenSumTwo {
            evenSum = evenSumOne
            //return evenSum
        } else {
            evenSum = evenSumTwo
            //return oddSum
        }
        
        
        
        if oddSumOne > oddSumTwo {
            oddSum = oddSumOne
        } else {
            oddSum = oddSumTwo
        }
        
        
        if evenSum > oddSum {
            return evenSum
        } else {
            return oddSum
        }
        
        
    }
    
}




var maximumRobber = findMaxiMumRobberyTwoAnother(nums)

