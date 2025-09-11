import Cocoa

//var greeting = "Hello, playground"


class Node {
    var value:Int?
    var addressOfNextNode: Node?
    init(value: Int?, addressOfNextNode: Node?) {
        self.value = value
        self.addressOfNextNode = addressOfNextNode
    }
}



class linkedlist {
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
           // print("The Value is", currentNode?.value!)
        }
        
    }
    
    
    
    func printlist() {
        var tempNode = head
        while tempNode?.value != nil {
            print("nodes value", tempNode?.value)
            tempNode = tempNode?.addressOfNextNode
        }
    }
    

    func reverseAgain() {
        var tempNode = head
        var previousNode = Node(value: nil, addressOfNextNode: nil)
        
        
        while tempNode?.value != nil {
           // print("nodes value", tempNode?.value)
            var nextNode = tempNode?.addressOfNextNode //(2,next)
            
            tempNode?.addressOfNextNode = previousNode //(nil,)
            previousNode = tempNode! //(1, nil)
            tempNode = nextNode
            
        }
        
        head = previousNode
    }
    
}



var newLL = linkedlist()
var tt = linkedlist()

newLL.addValue(value: 3)
newLL.addValue(value: 5)
newLL.addValue(value: 7)
newLL.addValue(value: 4)
newLL.addValue(value: 9)
newLL.addValue(value: 1)
newLL.addValue(value: 2)
newLL.addValue(value: 0)

tt = newLL

newLL.printlist()
newLL.reverseAgain()
print("............")
newLL.printlist()
print("............")
tt.printlist()







