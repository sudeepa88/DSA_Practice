import Cocoa

//var greeting = "Hello, playground"




func findKthPositive(_ arr: [Int], _ k: Int) -> Int  {
    
    var startingPoint = 0
    var endingpoint = arr.count - 1
    var midPoint = endingpoint/2
    
    while startingPoint <= endingpoint {
        var value = midPoint + 1
       
            var noOfMissingElement = arr[midPoint] - value
            if noOfMissingElement < k {
                startingPoint = value
                midPoint = startingPoint + ((endingpoint - startingPoint)/2)
            } else if noOfMissingElement >= k {
                endingpoint = midPoint - 1
                midPoint = startingPoint + ((endingpoint - startingPoint)/2)
            }
    }
    
    var noOfMissingElement = arr[endingpoint] - (endingpoint + 1)
    var desiredNumber = arr[endingpoint] + (  k - noOfMissingElement)
    
    return desiredNumber
}





var arr = [2,3,4,7,11]
var result = findKthPositive(arr, 3)
print("The Result is ", result)




