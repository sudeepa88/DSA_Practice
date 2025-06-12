import Cocoa

//func isValid(_ s: String) -> Bool {
//    if s.count % 2 != 0 {
//        return false
//    } else {
//        
//
//        let openArray = ["(","{", "["]
//        let closingArray = [")", "}", "]"]
//        
//        let charArray = Array(s)
//        
//        
//        
//        return true
//    }
//    
//    }
//
//
//var value = isValid("([{}])")


var str = "[{()}]"
var arr = ""


@MainActor func anyFunction(_ s: String) -> Bool {
    var arr = ""
    arr = s
    
    if s.count % 2 != 0 {
        return false
    } else {
        
        for i in arr {
            if  arr.contains("[]"){
                arr = arr.replacingOccurrences(of: "[]", with: "")
            } else if arr.contains("()") {
                arr = arr.replacingOccurrences(of: "()", with: "")
            } else if arr.contains("{}") {
                arr = arr.replacingOccurrences(of: "{}", with: "")
            }
        }
        if arr.isEmpty || arr.count == 0 {
            return true
        } else {
            return false
        }
        
    }
}


var example = anyFunction(str)


