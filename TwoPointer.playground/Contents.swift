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
    var l = 5
    var i = 0
    var k = 4
    var j = 1
    func printList() {
        var tempNode = head
        var exampleNode = head
        while tempNode?.value != nil {
        
            
            if i == k{
                j = j + 1
                exampleNode = exampleNode?.addressOfNextNode
                k = i + 1
            }
            i = i + 1
            tempNode = tempNode?.addressOfNextNode
           
        }
        
        print("Example node values are", exampleNode?.value)
        
    }// print statement end
    
    
}





var newLL = LinkedList()
newLL.addValue(value: 3)
newLL.addValue(value: 5)
newLL.addValue(value: 7)
newLL.addValue(value: 4)
newLL.addValue(value: 9)
newLL.addValue(value: 1)
newLL.addValue(value: 2)
newLL.addValue(value: 0)




newLL.printList()






