import Cocoa

//var greeting = "Hello, playground"
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

//[4,2,7,1,3,6,9]



let leftNodeTwo = TreeNode(1, nil, nil)
let rightNodeTwo = TreeNode(3, nil, nil)

let fromRightLeftNodeTwo = TreeNode(6, nil, nil)
let fromRightRightNodeTwo = TreeNode(9, nil, nil)


let leftNodeOne = TreeNode(2, leftNodeTwo, rightNodeTwo)
let rightNodeOne = TreeNode(7, fromRightLeftNodeTwo, fromRightRightNodeTwo)

let root = TreeNode(4,leftNodeOne , rightNodeOne)


func traverseTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    
    
    var tempLeftNode = root.left
    var tempRightNode = root.right
    var endNode:TreeNode? = root
    
//    print("The value of Root Node is ", root.val)
//    print("The Value of Left Node is ", tempLeftNode?.val)
//    print("The Value of right Node is ", tempRightNode?.val)
    
    
    
    
    
    
    traverseTree(tempLeftNode)
    
    
    traverseTree(tempRightNode)
    
    
    
    
    
    
    return nil
}



traverseTree(root)






func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    //guard let rootOne = rootOne else { return false }
    //guard let rootTwo = rootTwo else {return false}
    
    if p == nil && q == nil {
            return true
        }
        
        // one nil, other not → different
        if p == nil || q == nil {
            return false
        }
    
    
    var tempLeftNodeOne = p?.left
    var tempRightNodeOne = p?.right
   
    var tempLeftNodeTwo = q?.left
    var tempRightNodeTwo = q?.right
    

    guard let rootOne = p, let rootTwo = q else {
        return false
    }
    
    
    if rootOne.val == rootTwo.val {
        
      return  isSameTree(tempLeftNodeOne, tempLeftNodeTwo) && isSameTree(tempRightNodeOne, tempRightNodeTwo)
        
    } else {
        return false
    }

}



func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        
    guard let root = root , let subRoot = subRoot else {
        return false
    }
    var rootLeftNode = root.left
    var rootRightNode = root.right
    
    //var subRootLeft = subRoot.left
    //var subRootRight = subRoot.right
    
    if root.val == subRoot.val{
        
        if isSameTree(root, subRoot) {
            return true
        }
       
    }
    
//    else {
//        isSubtree(rootLeftNode, subRoot)
//        isSubtree(rootRightNode, subRoot)
//    }
    
    return isSubtree(rootLeftNode, subRoot) || isSubtree(rootRightNode, subRoot)
    }



//func invertTree(_ root: TreeNode?) -> TreeNode? {
//    guard let root = root else { return nil }
//        
//    
//    var tempLeftNode = root.left
//    var tempRightNode = root.right
//    var endNode:TreeNode? = root
//    
//    print("The value of Root Node is ", root.val)
//    print("The Value of Left Node is ", tempLeftNode?.val)
//    print("The Value of right Node is ", tempRightNode?.val)
//    
//    endNode = tempLeftNode?.left
//    tempLeftNode?.left = tempRightNode?.right
//    tempRightNode?.right = endNode
//    
//    
//   
//    invertTree(tempLeftNode)
//    invertTree(tempRightNode)
//        
//
//    
//    return nil
//    }



//invertTree(root)




