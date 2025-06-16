import Cocoa

//var greeting = "Hello, playground"


//First need to create a node
// A node will contain two things value and address of the next node
class Node {
    var value:Int?
    var addressOfNextNode: Node?
    init(value: Int?, addressOfNextNode: Node?) {
        self.value = value
        self.addressOfNextNode = addressOfNextNode
    }
}





// make a linkedlist 2 class and create a function called insert linkedList

class LinkedListTwo {
    
    var head: Node?
    var currentNode: Node?
    

    
    init() {
        head = nil
        currentNode = nil
    }
    
    
    func addValue(value: Int) {
        
        var newNode = Node(value: value, addressOfNextNode: nil)
        
        if head == nil {
            head = newNode
            currentNode = newNode
        } else {
                currentNode?.addressOfNextNode = newNode
                currentNode = newNode
            //print("The Value is", currentNode?.value!)
        }
        
    }
    
    func calCulateGCD(a:Int, b:Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            var temp = b
            b = a % b
            a = temp
        }
        
        return a
    }
    
    
    
    func insertGCD(_ head: Node) -> Node? {
        var temp = head
        while temp.addressOfNextNode != nil {
            var firstNode = temp
            var secondNode = temp.addressOfNextNode
            var firstNodeValue = firstNode.value
            var secondNodeValue = secondNode?.value
            
            print("First Node Value ", firstNodeValue)
            print("Second Node Value ", secondNodeValue)
            var gcdValue = calCulateGCD(a: firstNodeValue!, b: secondNodeValue!)
            
            var temporaryNode = Node(value: nil, addressOfNextNode: nil)
            temporaryNode.value = gcdValue
            temporaryNode.addressOfNextNode = secondNode
            
            
            firstNode.addressOfNextNode = temporaryNode
            
            temp = secondNode!
        }
        
        return head
    }
    
    
    
    func printList() {
        var tempNode = head
        
        while tempNode?.value != nil {
            print("tempNode Value", tempNode?.value!)
            tempNode = tempNode?.addressOfNextNode
        }
    }
    
    
    
}

var newLL = LinkedListTwo()
newLL.addValue(value: 18)
newLL.addValue(value: 6)
newLL.addValue(value: 10)
newLL.addValue(value: 3)


newLL.insertGCD(newLL.head!)

newLL.printList()










