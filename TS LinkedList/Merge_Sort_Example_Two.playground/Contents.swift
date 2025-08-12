import Cocoa

//var greeting = "Hello, playground"
var nums1 = [1,2]
var nums2 = [3,4]



var totalSum = nums1 + nums2

print("Total Sum", totalSum)

func merge(left: [Int], right:[Int]) -> [Int] {
    
    var mergedArry:[Int] = []
    var left = left
    var right = right
    
    
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            
            mergedArry.append(left.removeFirst())
            // left.removeFirst()
        } else {
            
            mergedArry.append(right.removeFirst())
            
        }
    }
    
    
    return mergedArry + left + right
}



func mergeSort(arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    
    
    // midIdx goes to left, not midIdx-1
    let leftArr = Array(arr[0..<arr.count/2])
    let rightArr = Array(arr[arr.count/2..<arr.count])
    
    return merge(left: mergeSort(arr: leftArr), right: mergeSort(arr: rightArr))
}



func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var longedArr = nums1 + nums2
    
    var sortedArr = mergeSort(arr: longedArr)
    print("Sorted Array is", sortedArr)
    
    var median:Double = 0.0
    if sortedArr.count % 2 != 0 {
        var mididx = sortedArr.count / 2
        median = Double(sortedArr[mididx])
    } else {
        var mididx1 = sortedArr.count / 2
        var mididx2 = mididx1 - 1
        median = Double(Double(sortedArr[mididx1] + sortedArr[mididx2]) / 2.0)
    }
    
    return median
}


findMedianSortedArrays(nums1, nums2)






