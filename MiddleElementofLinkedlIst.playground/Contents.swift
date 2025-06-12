import Cocoa

//var greeting = "Hello, playground"




var value: Int = 0


value = 6/2 + 1

print("the value is", value)



class Node {
    var value: Int?
    var addressOfNextNode: Node?
    
    init(value: Int?, addressOfNextNode: Node?) {
        self.value = value
        self.addressOfNextNode = addressOfNextNode
    }
}



class LinkedList {
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
    
    
 var noOfNodesAre = 0
    
    func printlist() {
        var tempNode = head
        while tempNode?.value != nil {
            print("nodes value", tempNode?.value)
            tempNode = tempNode?.addressOfNextNode
        }
    }
    
    
    func middleElement() {
        var temporary = head
        while temporary?.value != nil {
            noOfNodesAre = noOfNodesAre + 1
            temporary = temporary?.addressOfNextNode
        }
        
        var middleOfElement: Node?
        var j = 1
        var noOfOperation = 0
        
        
        if noOfNodesAre % 2 == 0 {
            noOfOperation = noOfNodesAre/2 + 1
            print("no of operation in even nodes", noOfOperation)
            middleOfElement = head
            
            while middleOfElement?.value != nil {
                if j == noOfOperation {
                    print("The Middle Element Value", middleOfElement?.value)
                    break
                } else {
                    j = j + 1
                    middleOfElement = middleOfElement?.addressOfNextNode
                }
            }
            
            
        } else {
            noOfOperation = noOfNodesAre/2 + 1
            print("no of operation in Odd nodes", noOfOperation)
           
            
            middleOfElement = head
            
            while middleOfElement?.value != nil {
                if j == noOfOperation {
                    print("The Middle Element Value", middleOfElement?.value)
                    break
                } else {
                    j = j + 1
                    middleOfElement = middleOfElement?.addressOfNextNode
                }
            }
        }
        print("Number of nodes are", noOfNodesAre)
    }
    
    
    func middleOfElementTwo() {
        var tempNode = head
        var sampleNode = head
        while tempNode?.addressOfNextNode != nil {
            sampleNode = sampleNode?.addressOfNextNode
            tempNode = tempNode?.addressOfNextNode?.addressOfNextNode
        }
        print("The Value of middle element is", sampleNode?.value )
    }
    
    
    
}



var newLL = LinkedList()
newLL.addValue(value: 3)
newLL.addValue(value: 5)
newLL.addValue(value: 7)
newLL.addValue(value: 4)
newLL.addValue(value: 9)
newLL.addValue(value: 1)
newLL.addValue(value: 2)
//newLL.addValue(value: 0)




newLL.printlist()
newLL.middleElement()

newLL.middleOfElementTwo()

