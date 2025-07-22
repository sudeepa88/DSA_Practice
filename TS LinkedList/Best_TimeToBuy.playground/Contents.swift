import Cocoa

//var greeting = "Hello, playground"





var prices = [7,1,5,3,6,4]
var index = 0
var minCount = prices[0]
for i in 1...prices.count - 1 {
    if minCount < prices[i] {
        minCount = prices[i]
        index = i
    }
}
