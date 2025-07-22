import Cocoa

//var greeting = "Hello, playground"


//Brute Force
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var examples:[Int] = []
    
    for i in 0...numbers.count - 2 {
        for j in i+1...numbers.count - 1 {
            if numbers[i] + numbers[j] == target {
                examples.append(i+1)
                examples.append(j+1)
            }
        }
    }
        
    return examples
    }



twoSum([2,7,11,15], 9)

//Optimised Solution

func twoSumTwo(_ numbers: [Int], _ target: Int) -> [Int] {
    var examples:[Int] = []
    
    var i = 0
    var j = numbers.count - 1
    
    while i < j {
        if numbers[i] + numbers[j] < target {
            i = i + 1
        } else if numbers[i] + numbers[j] > target {
            j = j - 1
        } else if numbers[i] +  numbers[j] == target {
            examples.append(i+1)
            examples.append(j+1)
            i = i + 1
            j = j - 1
        }
    }
        
    return examples
    }



twoSumTwo([2,7,11,15], 9)

