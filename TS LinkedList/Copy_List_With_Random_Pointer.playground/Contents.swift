import Cocoa

//var greeting = "Hello, playground"




class Node {
    var val:Int
    var next: Node?
    //var random: Node?
    init(val: Int, next: Node?) {
        self.val = val
        self.next = next
        //self.random = random
    }
}


var listFive = Node(val: 1, next: nil)
var listFour = Node(val: 10, next: listFive)
var listThree = Node(val: 11, next: listFour)
var listTwo = Node(val: 13, next: listThree)
var listOne = Node(val: 7, next: listTwo)


func creatingNewCopy(_ head: Node?) {
    var tempNode = head
    
    while tempNode != nil {
        addNewValue(value: tempNode!.val, head: head!, currentNode: (tempNode?.next)!)
        tempNode = tempNode?.next
    }
}



func addNewValue(value: Int, head: Node, currentNode: Node){
    
    var newNode = Node(val: value, next: nil)
    var headNode = head
    var currentNode = currentNode
    
    currentNode.next = newNode
    currentNode = newNode
    
    
}
    
    
    
    





