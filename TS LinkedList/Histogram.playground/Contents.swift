import Cocoa

//var greeting = "Hello, playground"


var exampleHeights = [2,1,5,6,2,3]

func largestRectangleArea(_ heights: [Int]) -> Int {
    
    var previousSmallerIdx:[Int] = [-1]
    var nextSmallerIdx:[Int] = []
    var areasAre:[Int] = []
    var i = 1
    var j = i - 1
    while i <= heights.count{
        if heights[i] > heights[j] {
            previousSmallerIdx.append(i)
            i = i + 1
            j = i - 1
            //break
        } else {
           // previousSmallerIdx.append(previousSmallerIdx[i-1])
            j = j - 1
            previousSmallerIdx.append(j)
            //break
        }
    }
    
//    for i in 0...heights.count - 2 {
//        if heights[i] < heights[i + 1] {
//            nextSmallerIdx.append(i)
//        } else {
//            nextSmallerIdx.append(heights.count)
//        }
//    }
//    
//    nextSmallerIdx.append(heights.count)
    
    print("All previous Smaller Indexs: ", previousSmallerIdx)
   // print("All next Smaller Indexs: ", nextSmallerIdx)
    
//    for i in 0...heights.count - 1 {
//        var area = (nextSmallerIdx[i] - previousSmallerIdx[i] - 1) * heights[i]
//        areasAre.append(area)
//    }
//    
//    print("All Areas Are : ", areasAre)
        return 0
    }





largestRectangleArea(exampleHeights)


