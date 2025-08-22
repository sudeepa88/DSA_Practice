import Cocoa

//var greeting = "Hello, playground"
func minimumWindow(_ s: String, _ t: String) -> String {
    
    if t.count > s.count {
        return ""
    } else {
        
        var bc = Array(s)
        var cd = Array(t)
        print(bc)
        print(cd)
        
        
        let size = cd.count - 1
        
        for j in 0...bc.count - size - 1 {
            for i in 0...bc.count - size - 1 - j{
                var window = bc[i...size + i + j]
                
                var match1 = Array(window)
                var match2 = cd
                

                
              if  countVariables(match1, match2) {
                    return String(window)
                }
                
                
            }
            
        }
        return ""
    }
}


func countVariables(_ fr:[Character], _ po:[Character]) -> Bool {
    var freqFr: [Character: Int] = [:]
    var freqPo: [Character: Int] = [:]
    
    // Count characters in fr
    for ch in fr {
        if let value = freqFr[ch] {
            freqFr[ch] = value + 1
        } else {
            freqFr[ch] = 1
        }
    }
    
    // Count characters in po
    for ch in po {
        if let value = freqPo[ch] {
            freqPo[ch] = value + 1
        } else {
            freqPo[ch] = 1
        }
    }
    
    
    for (key, value) in freqPo {
        if let frValue = freqFr[key] {
            if frValue < value {
                return false
            }
        } else {
            return false
        }
    }
    
    return true
}


//minimumWindow("ADOBECODEBANC", "ABC")
//minimumWindow("abc", "ac")

minimumWindow("bba", "ab")






