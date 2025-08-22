import Cocoa

//var greeting = "Hello, playground"




class ListNode {
    var val:Int
    var next: ListNode?
    init(val: Int, next: ListNode?) {
        self.val = val
        self.next = next
    }
}



class linkedlist {
    var head: ListNode?
    var currentNode: ListNode?
    
    init() {
        head = nil
        currentNode = nil
    }
    
    
    func addValue(value: Int) {
        
        var newNode = ListNode(val: value, next: nil)
        
        if head == nil {
            head = newNode
            currentNode = newNode
        } else {
                currentNode?.next = newNode
                currentNode = newNode
           // print("The Value is", currentNode?.value!)
        }
        
    }
    
    
    
    func printlist() {
        var tempNode = head
        while tempNode?.val != nil {
            print("nodes value", tempNode!.val)
            tempNode = tempNode?.next
        }
    }
}



var newLLOne = linkedlist()
newLLOne.addValue(value: 1)
newLLOne.addValue(value: 2)
newLLOne.addValue(value: 4)



var newLLTwo = linkedlist()
newLLTwo.addValue(value: 1)
newLLTwo.addValue(value: 3)
newLLTwo.addValue(value: 4)




func twoLinkedList(_ list1:ListNode?, _ list2:ListNode?) -> ListNode? {
    var start = list1
    var startTwo = list2
    
    var finalNode: ListNode?
    var head: ListNode?
    
    
    while start?.val != nil && startTwo?.val != nil {
        
        if startTwo!.val >= start!.val {
            
            if head == nil {
                head = start
                finalNode = start!
            } else {
                finalNode?.next = start!
                
                finalNode = finalNode?.next!
            }
            
            start = start?.next
            
        }
        
        else
        
        {
            
            
            if head == nil {
                head = startTwo
                finalNode = startTwo!
            } else {
                finalNode?.next = startTwo!
                
                finalNode = finalNode?.next!
            }
            
            startTwo = startTwo?.next
        }
        
        
        
        
    }
    
    finalNode?.next = (start != nil) ? start : startTwo
    
    
    
    
    
        var tempNode = head
        while tempNode?.val != nil {
            print("Final Node Value is", tempNode!.val )
            tempNode = tempNode?.next
        }
    
    return head
}



//twoLinkedList(newLLOne.head, newLLTwo.head)



func isPalindrome(_ head: ListNode?) -> Bool {
    guard let head else {
        return false
    }
    
    var start:ListNode? = head
    var tempArr:[Int] = []
    //start = head
    while start != nil {
        tempArr.append(start!.val)
        start = start?.next
    }
    
    start = head
    
    while start != nil {
        var value = tempArr.removeLast()
        if value != start?.val {
            return false
        }
        start = start?.next
    }
    
    
        return true
    }


print("............................")

var linkedListOne = ListNode(val: 1, next: nil)
var linkedListTwo = ListNode(val: 2, next: linkedListOne)
var linkedListThree = ListNode(val: 3, next: linkedListTwo)
var linkedListFour = ListNode(val: 4, next: linkedListThree)
var linkedListFive = ListNode(val: 5, next: linkedListFour)
var linkedListSix = ListNode(val: 6, next: linkedListFive)

//isPalindrome(linkedListTwo)



func middleNode(_ head: ListNode?) -> ListNode? {
    var tempNode = head
    var middleNode = head
    var forwardNode = head
    
    while tempNode != nil {
         
        if forwardNode == nil {
            break
        }
        

        middleNode = tempNode
        forwardNode = forwardNode?.next?.next
        tempNode = tempNode?.next
        
        
    }
    
    print("The Middle Node is ", middleNode?.val)
    return middleNode
    
}






middleNode(linkedListSix)



//class Solution {
//    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//        var l1 = list1
//        var l2 = list2
//        
//        var head: ListNode?
//        var current: ListNode?
//        
//        while let node1 = l1, let node2 = l2 {
//            if node1.val <= node2.val {
//                if head == nil {
//                    head = node1
//                    current = node1
//                } else {
//                    current?.next = node1
//                    current = current?.next
//                }
//                l1 = node1.next
//            } else {
//                if head == nil {
//                    head = node2
//                    current = node2
//                } else {
//                    current?.next = node2
//                    current = current?.next
//                }
//                l2 = node2.next
//            }
//        }
//        
//        // Attach the remaining nodes
//        if head == nil {
//            head = l1 ?? l2
//        } else {
//            current?.next = l1 ?? l2
//        }
//        
//        return head
//    }
//}




