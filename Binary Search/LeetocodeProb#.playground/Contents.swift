import Cocoa

var greeting = "Hello, playground"

func getTheNumbers(_ nums1: [Int], _ nums2: [Int]) -> Int{

    
    for i in 0...nums2.count - 1 {
        //print("The nums are",nums1[i])
        var startingIndex = 0
        var endingindex = nums1.count - 1
        var midIndex: Int = endingindex/2
        while startingIndex <= endingindex {
            if nums2[i] > nums1[midIndex] {
                startingIndex = midIndex + 1
                midIndex = startingIndex + ((endingindex - startingIndex)/2)
            } else if nums2[i] < nums1[midIndex]
            {
                endingindex = midIndex - 1
                midIndex = startingIndex + ((endingindex - startingIndex)/2)
            } else if nums2[i] == nums1[midIndex] {
                print("Returning the first common value", nums2[i])
                return nums2[i]
                //break
            }
        }
    }
    return -1
    
}

var int = [1,3,6,7]
var int2 = [3,4,5,6,7]

var firstMinimalComn = getTheNumbers(int, int2)
print("The Common Thing is", firstMinimalComn)
//getTheNumbers(int, int2)




