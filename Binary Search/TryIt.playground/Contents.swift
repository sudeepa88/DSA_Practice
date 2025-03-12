//import Cocoa
//
////var greeting = "Hello, playground"
//
//var arr = [7,8,20,50,52,67,70,72]
////var sample = arr.sort()
//var searchingValue = 52
//
//
//
//func returnSearchIndex(_ arr: [Int], _ searchingValue: Int) -> Int {
//    
//    
//    var startingIndex = 0
//    var endingIndex = arr.count - 1
//    var returningValue = 0
//    
//    
//    while arr[returningValue] != searchingValue {
//        var middleIndex = endingIndex / 2
//        
//        if arr[startingIndex] == searchingValue {
//            returningValue = startingIndex
//            return returningValue
//        } else if arr[endingIndex] == searchingValue {
//            returningValue = endingIndex
//            return returningValue
//        }
//        
//
//        else {
//            
//            if arr[middleIndex] < searchingValue {
//                startingIndex = middleIndex
//                // middleIndex will get updated
//                middleIndex = startingIndex + ((endingIndex - startingIndex) / 2)
//                returningValue = middleIndex
//            }
//            
//            if searchingValue < arr[middleIndex] {
//                endingIndex = middleIndex
//                //middle index is getting updated
//                middleIndex = startingIndex + (endingIndex / 2)
//                returningValue = middleIndex
//            }
//            
//            
//        }
//        
//       print("The Returning Value is", returningValue)
//    }// while loop ending
//    
//
//    
//    return -1
//}
//
//
//
//var valueIn = returnSearchIndex(arr, searchingValue)
//
//print("The Value in",valueIn)

var enumBs:Int = 0/2

print("The value of enumBS is ", enumBs)


