import Cocoa

//var greeting = "Hello, playground"

//var arr = [7,8,20,50,52,67,70,72]
////var sample = arr.sort()
//var searchingValue = 52
//
//var startingIndex = 0
//var endingIndex = arr.count - 1
//var middleIndex = endingIndex / 2
//
//print("The ending index is", endingIndex, "The Middle index is ", middleIndex)
//
//if arr[startingIndex] == searchingValue {
//    print("The value is", startingIndex)
//} else if arr[endingIndex] == searchingValue {
//    print("The Value is", endingIndex)
//} else {
//    
//    while arr[middleIndex] != searchingValue {
//        
//        if arr[middleIndex] < searchingValue {
//            startingIndex = middleIndex
//            // middleIndex will get updated
//            middleIndex = startingIndex + ((endingIndex - startingIndex) / 2)
//        }
//        
//        if searchingValue < arr[middleIndex] {
//            endingIndex = middleIndex
//            //middle index is getting updated
//            middleIndex = startingIndex + (endingIndex / 2)
//        }
//        
//    } // while loop
//}
//
//print("Middle Index is ", middleIndex)

var exmple:Int = 1/2
print("The value is",exmple)





//var arr = [7,8,20,50,52,67,70,72,82,85,87,90,98,100,102]

//var startingIndex = 0
//var endingindex = arr.count - 1
//var midIndex: Int = endingindex/2

//var searchingValue = 67

//while startingIndex <= endingindex {
//
//if arr[midIndex] == searchingValue {
//        print("Index of printing in midIndex is ",midIndex)
//        break
//    } else if arr[midIndex] < searchingValue {
//        startingIndex = midIndex + 1
//        midIndex = startingIndex + ((endingindex - startingIndex)/2)
//    } else if arr[midIndex] > searchingValue {
//        endingindex = midIndex - 1
//        midIndex = endingindex / 2
//    }
//}


func letsFindTheIndex(_ arr:[Int], _ searchingValue: Int) {
    
    var startingIndex = 0
    var endingindex = arr.count - 1
    var midIndex: Int = endingindex/2
    
    
    
    while startingIndex <= endingindex {

    if arr[midIndex] == searchingValue {
            print("Index of printing in midIndex is ",midIndex)
            break
        } else if arr[midIndex] < searchingValue {
            startingIndex = midIndex + 1
            midIndex = startingIndex + ((endingindex - startingIndex)/2)
        } else if arr[midIndex] > searchingValue {
            endingindex = midIndex - 1
            midIndex = endingindex / 2
        }
    }
}


var arr = [7,8,20,50,52,67,70,72,82,85,87,90,98,100,102]
var searchingValue = 67

letsFindTheIndex(arr, searchingValue)


