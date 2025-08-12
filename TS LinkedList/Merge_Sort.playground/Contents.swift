import Cocoa

//var greeting = "Hello, playground"



func mergeSortIterative(_ array: [Int]) -> [Int] {
    var src = array
    let n = src.count
    guard n > 1 else { return src }

    var dest = Array(repeating: 0, count: n)
    var width = 1

    while width < n {
        var i = 0
        while i < n {
            let left = i
            let mid = min(i + width, n)
            let right = min(i + 2 * width, n)

            var l = left
            var r = mid
            var k = left

            // merge [left..<mid] and [mid..<right] into dest
            while l < mid && r < right {
                if src[l] <= src[r] {
                    dest[k] = src[l]; l += 1
                } else {
                    dest[k] = src[r]; r += 1
                }
                k += 1
            }
            while l < mid { dest[k] = src[l]; l += 1; k += 1 }
            while r < right { dest[k] = src[r]; r += 1; k += 1 }

            i += 2 * width
        }

        // swap src and dest for next pass (avoids copying every element)
        swap(&src, &dest)
        width *= 2
    }

    return src
}

// Example
let unsorted = [7, 3, 8, 2, 9, 1, 5, 4]
let sorted = mergeSortIterative(unsorted)
print(sorted) // [1,2,3,4,5,7,8,9]



// Recursive Approach

//Let's Defining a function which is doing the sorting

var nums1 = [1,3]
var nums2 = [2]



var totalSum = nums1 + nums2

func merge(left: [Int], right:[Int]) -> [Int] {
    
    var mergedArry:[Int] = []
    var left = left
    var right = right
    
    
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            print(left.first!)
            let newEleL = left.removeFirst()
            print("New Ele Left Side:", newEleL)
            mergedArry.append(newEleL)
           // left.removeFirst()
        } else {
            
           let newEleR = right.removeFirst()
            print("New Ele Right Side:", newEleR)
            mergedArry.append(newEleR)
            
        }
    }
    
    
    return mergedArry + left + right
}




func mergeSort(arr:[Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }
    
    let firstIdx = 0
    let midIdx = arr.count / 2
    let lastIdx = arr.count - 1
    
    let leftArr = Array(arr[firstIdx...midIdx])
    let rightArr = Array(arr[(midIdx+1)...lastIdx])
    
    
    return merge(left: mergeSort(arr: leftArr), right: mergeSort(arr: rightArr))
}



print(mergeSort(arr: totalSum))



