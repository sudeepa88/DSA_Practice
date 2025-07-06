import Cocoa

//var greeting = "Hello, playground"



var candidates = [2,3,6,7]
var target = 7

var combinationSums:[[Int]] = [[]]

var emptyCandidates: [Int] = []

var summation: Int = 0


@MainActor func combinationSum(_ candidates:[Int],_ target: Int) {
    for k in 0...candidates.count - 1 {
        for i in 0...candidates.count - 1 {
            
            summation = summation + candidates[i]
            
            if candidates[i] < target && summation < target {
                emptyCandidates.append(candidates[i])
                combinationSums.append(emptyCandidates)
                
            }
            
            //summation = 0
        }
        //summation = 0
        
    }
    
    print("All Combination sums are: ", combinationSums)
}





combinationSum(candidates, target)

