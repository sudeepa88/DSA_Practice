import Cocoa

//var greeting = "Hello, playground"



func letsFindTheIndex(_ arr:[Int], _ searchingValue: Int) -> Int {
    
    var startingIndex = 0
    var endingindex = arr.count - 1
    var midIndex: Int = endingindex/2
    
    while startingIndex <= endingindex {

    if arr[midIndex] == searchingValue {
            
        
            return midIndex
            
    }
        else if arr[midIndex] < searchingValue {
            startingIndex = midIndex + 1
            midIndex = startingIndex + ((endingindex - startingIndex)/2)
        } else if arr[midIndex] > searchingValue {
            endingindex = midIndex - 1
            midIndex = startingIndex + ((endingindex - startingIndex)/2)
        }
    }
    
    return startingIndex
}


var arr = [7,8,20,50,52,67,70,72]
var searchingValue = 5

letsFindTheIndex(arr, searchingValue)
