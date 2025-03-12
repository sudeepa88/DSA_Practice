import Cocoa

//var greeting = "Hello, playground"

//Question: 


func letsNoOfNegative(_ nums: [Int]) -> Int {
    var nos:Int = 0
    var startingIndex = 0
    var endingindex = nums.count - 1
    var midIndex: Int = endingindex/2
    
    //this while loop is getting the count for the negative integers
    while startingIndex <= endingindex {
        if nums[midIndex] >= 0 {
            endingindex = midIndex - 1
            midIndex = startingIndex + ((endingindex - startingIndex) / 2)
            //print("MidIndex is", midIndex)
        }
        
        else if nums[midIndex] < 0 {
            nos = midIndex + 1

            startingIndex = midIndex + 1

            midIndex = startingIndex + ((endingindex - startingIndex) / 2)
        }
    }
    
    //Make a while loop for positive integers
  
    var firstIndex = 0
    var lastIndex = nums.count - 1
    var mid:Int = lastIndex/2
    var pos:Int = 0
    
    while firstIndex <= lastIndex {
        //if midindex value is positive then it is positive till that index from last index
        if nums[mid] > 0 {
            pos = pos + (lastIndex -  mid) + 1
            //position for last index
            lastIndex = mid - 1
            //position for mid index
            mid = firstIndex + ((lastIndex - firstIndex) / 2)
        }
        //making an else if statement for the 0 value
        else if nums[mid] == 0 {
            
            firstIndex = mid + 1  // Move past the zero
                mid = firstIndex + ((lastIndex - firstIndex) / 2)
            
        }
        
        //if it is negative then update the first index
        else if nums[mid] < 0 {
            //Updating the first index
            firstIndex = firstIndex + 1
            //updating the mid index
            mid = firstIndex + ((lastIndex - firstIndex) / 2)
        }
    }
    
    
    if pos > nos {
        print("Pos", pos)
        return pos
    } else if nos > pos {
        print("nos is", nos)
        return nos
    } else if nos == pos {
        return pos
    }
    
    else {
        return -1
    }
    
}

//var arr2 = [-39,-30,-20,-10,1,5,8,9,10]
var arr2 = [5,20,66,1314]
var okay = letsNoOfNegative(arr2)

print("The value is", okay)


