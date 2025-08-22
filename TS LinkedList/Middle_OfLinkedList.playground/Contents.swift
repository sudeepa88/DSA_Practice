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
    
    var middleNode:Node?
    
    func middleOfLinkedList() {
        var tempNode = head
        middleNode = head
        var forwardNode = head
        while tempNode?.value != nil {
            //print("nodes value", tempNode?.value)
            tempNode = tempNode?.addressOfNextNode
            middleNode = tempNode?.addressOfNextNode
            forwardNode = middleNode?.addressOfNextNode?.addressOfNextNode
            if forwardNode?.value == nil {
                break
            }
            
            
            print("Value of Middle Node ", middleNode?.value)
            print("Value of Forward Node ", forwardNode?.value)
        }
    }

    
}





var newLL = linkedlist()
newLL.addValue(value: 1)
newLL.addValue(value: 2)
newLL.addValue(value: 3)
newLL.addValue(value: 4)
newLL.addValue(value: 5)
newLL.addValue(value: 6)


newLL.printlist()
print("...........................")

newLL.middleOfLinkedList()











