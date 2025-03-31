import Cocoa

var greeting = "Hello, playground"



//Bubble Sort

var arr: [Int] = [30, 20, 10, 50, 60]

for k in 0...arr.count - 1 {
    
    for i in 0...arr.count - 2 {
        var j = i + 1
        if arr[i] > arr[j] {
            var temp = arr[i]
            arr[i] = arr[j]
            arr[j] =  temp
        }
    }
}
print(arr)



//Anagram proving

var str1 = "a"
var str3 = "a"


func letsAnagram(_ s: String, _ t: String) -> Bool {
    var arr1:[String] = []
    var arr2: [String] = []
    for i in s {
        arr1.append(String(i))
    }
    
    for j in t {
        arr2.append(String(j))
    }
    
    if arr1.count > 1 {
        
        for k in 0...arr1.count - 1 {
            
            for i in 0...arr1.count - 2 {
                var j = i + 1
                if arr1[i] > arr1[j] {
                    var temp = arr1[i]
                    arr1[i] = arr1[j]
                    arr1[j] =  temp
                }
            }
        }
        
    }
    
    if arr2.count > 1 {
        for k in 0...arr2.count - 1 {
            
            for i in 0...arr2.count - 2 {
                var j = i + 1
                if arr2[i] > arr2[j] {
                    var temp = arr2[i]
                    arr2[i] = arr2[j]
                    arr2[j] =  temp
                }
            }
        }
    }
        
        
    if arr1 == arr2 {
        return true
    } else {
        return false
    }
    
    
}



var sample = letsAnagram(str1, str3)

print("Anagram ", sample)




