import Cocoa

var greeting = "Hello, playground"


//First need to create a node
// A node will contain two things value and address of the next node
class Node {
    let value:Int
    let addressOfNextNode: Node?
    init(value: Int, addressOfNextNode: Node?) {
        self.value = value
        self.addressOfNextNode = addressOfNextNode
    }
}


// A LinkedList Class

class LinkedList {
    var example1: Node
        var example2: Node
        var example3: Node
        var example4: Node
        var example5: Node

        init() {
            // Create nodes
            example1 = Node(value: 16, addressOfNextNode: nil)
            example2 = Node(value: 13, addressOfNextNode: example1)
            example3 = Node(value: 19, addressOfNextNode: example2)
            example4 = Node(value: 34, addressOfNextNode: example3)
            example5 = Node(value: 72, addressOfNextNode: example4)
        }
        
        func printExample4() {
            print("Value: \(example3.value), Address: \(example3.addressOfNextNode!)")
            print("Value: \(example5.value), Address: \(example5.addressOfNextNode!)")
            print("Value: \(example4.value), Address: \(example4.addressOfNextNode!)")
            print(Unmanaged.passUnretained(example3.addressOfNextNode!).toOpaque())
            print(Unmanaged.passUnretained(example5.addressOfNextNode!).toOpaque())
            print(Unmanaged.passUnretained(example4.addressOfNextNode!).toOpaque())



        }
    
}


let linkedList = LinkedList()
linkedList.printExample4()
