import Cocoa

//var greeting = "Hello, playground"




func findKthPositive(_ arr: [Int], _ k: Int) -> Int  {
    
    var startingPoint = 0
    var endingpoint = arr.count - 1
    var midPoint: Int = endingpoint/2
            
        while startingPoint <= endingpoint {
            var value = midPoint + 1
            
            var noOfMissingElement = arr[midPoint] - value
            if noOfMissingElement < k {
                startingPoint = midPoint + 1
                midPoint = startingPoint + ((endingpoint - startingPoint)/2)
            }
            else if noOfMissingElement >= k {
                endingpoint = midPoint - 1
                midPoint = startingPoint + ((endingpoint - startingPoint)/2)
            }
        } // while loop
    return k + endingpoint + 1
}





var arr = [2,3,4,7,11]
//var arr = [3,7]
var result = findKthPositive(arr, 4)
print("The Result is ", result)




