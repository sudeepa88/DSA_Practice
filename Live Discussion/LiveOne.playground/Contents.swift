import Cocoa

//var greeting = "Hello, playground"




func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    if nums.count == 1 {
        return false
    } else {
        
        for i in 0...nums.count - 1 {
            for j in 0...nums.count - 1 {
                if (j != i) && (nums[i] == nums[j]) {
                    if abs(j - i) <= k {
                        return true
                    }
                }
            }
        }
        
        return false
    }
}







containsNearbyDuplicate([1,2,3,1,2,3], 2)



