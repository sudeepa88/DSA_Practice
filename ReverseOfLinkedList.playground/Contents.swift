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
    
    // reverse
    
    func reverse() {
        var tempNode = head
        var previousNode = head
        var currentNodex = head
        var newNode = head
        
        
        while tempNode?.value != nil {
            
            newNode?.addressOfNextNode = tempNode
            currentNodex?.value = tempNode?.value
            currentNodex?.addressOfNextNode = newNode
            newNode = currentNodex
            
            
            tempNode = tempNode?.addressOfNextNode
        }
        
        
        // printing reverse
        while currentNodex?.value != nil {
            print("Currnt value", currentNodex?.value)
            currentNodex = currentNodex?.addressOfNextNode
        }
        
    }
    
//    func reverseOne() {
//        var previousNode: Node? = nil
//            var currentNode = head
//            var nextNode: Node? = nil
//            
//            while currentNode != nil {
//                nextNode = currentNode?.addressOfNextNode // Store the next node
//                currentNode?.addressOfNextNode = previousNode // Reverse the link
//                previousNode = currentNode // Move `previousNode` forward
//                currentNode = nextNode // Move `currentNode` forward
//            }
//            
//            head = previousNode // Update the head to the new start of the list
//            
//            // Print the reversed list
//            print("Reversed list:")
//            var tempNode = head
//            while tempNode != nil {
//                print("Node value:", tempNode?.value ?? -1)
//                tempNode = tempNode?.addressOfNextNode
//            }
//    }

    
    
    
}



var newLL = linkedlist()
newLL.addValue(value: 3)
newLL.addValue(value: 5)
newLL.addValue(value: 7)
newLL.addValue(value: 4)
newLL.addValue(value: 9)
newLL.addValue(value: 1)
newLL.addValue(value: 2)
newLL.addValue(value: 0)

newLL.printlist()
newLL.reverse()
//newLL.printlist()









