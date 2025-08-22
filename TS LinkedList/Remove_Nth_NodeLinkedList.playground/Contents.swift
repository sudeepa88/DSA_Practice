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


var linkedListOne = ListNode(val: 6, next: nil)
var linkedListTwo = ListNode(val: 5, next: linkedListOne)
var linkedListThree = ListNode(val: 4, next: linkedListTwo)
var linkedListFour = ListNode(val: 3, next: linkedListThree)
var linkedListFive = ListNode(val: 2, next: linkedListFour)
var linkedListSix = ListNode(val: 1, next: linkedListFive)


func reverseList(_ head: ListNode?) -> ListNode? {
    
    var tempNode = head
    var previousNode: ListNode? = nil
    
    while tempNode != nil {
        let nextNode = tempNode?.next
        tempNode?.next = previousNode
        previousNode = tempNode
        tempNode = nextNode
    }

    
    var alo = previousNode
    
    
    while alo != nil {
        print("The Value are: ",alo?.val)
        
        alo = alo?.next
    }
    
    
    return previousNode
}



//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> Int? {
//    
//    var tempNode = head
//    var count = 0
//    
//    while tempNode != nil {
//        count = count + 1  //[6,5]
//        if count == n {
//            tempNode?.next = tempNode?.next?.next
//        }
//        
//        tempNode = tempNode?.next
//        
//    }
//    
//    var nilNode  = head
//    
//    while nilNode != nil {
//        print("nilNode value is ", nilNode?.val)
//        nilNode = nilNode?.next
//    }
//    
//    
//    
//    return count
//}



func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var tempNode = head
    var count = 0
    
    
    
    while tempNode != nil {
        count = count + 1
        tempNode = tempNode?.next
    }
    
    print("the total length is ", count)
    var deleteTarget =  count - n
    if deleteTarget == 0 {
        return head?.next
    }
    
    count = 0
    var nilNode = head
    
    while nilNode != nil {
        count = count + 1
        
        if count == deleteTarget {
            nilNode?.next = nilNode?.next?.next
        }
        
        nilNode = nilNode?.next
    }
    
    
    //    print("............")
    //
    //    var redNode = head
    //    while redNode != nil {
    //        print("The Red Node is ", redNode?.val)
    //        redNode = redNode?.next
    //    }
    return head
    
    
    
    
}



removeNthFromEnd(linkedListSix, 3)
