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


let leftNodeOfFour = TreeNode(3, nil, nil)
let rightNodeOfFour = TreeNode(5, nil, nil)

let leftNodeTwo = TreeNode(0, nil, nil)
let rightNodeTwo = TreeNode(4, leftNodeOfFour, rightNodeOfFour)

let fromRightLeftNodeTwo = TreeNode(7, nil, nil)
let fromRightRightNodeTwo = TreeNode(9, nil, nil)


let leftNodeOne = TreeNode(2, leftNodeTwo, rightNodeTwo)
let rightNodeOne = TreeNode(8, fromRightLeftNodeTwo, fromRightRightNodeTwo)

let root = TreeNode(6,leftNodeOne , rightNodeOne)



func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
    guard let root = root else { return nil }
    
    
    var tempLeftNode = root.left
    var tempRightNode = root.right
    //var endNode:TreeNode? = root
    
    var commonValues:[TreeNode] = []
    
    guard let pNode = p else { return nil }
    guard let qNode = q else { return nil }
    
    print("The value of left Node", root.val )
    
    if (root.val < pNode.val) && (root.val < qNode.val) {
        return lowestCommonAncestor(tempRightNode, p, q)
    }
    else if (root.val > pNode.val) && (root.val > qNode.val) {
        return lowestCommonAncestor(tempLeftNode, p, q)
    }
    else if (root.val > pNode.val) && (root.val < qNode.val) {
        commonValues.append(root)
            }
    else if (root.val == pNode.val) && (root.val < qNode.val) {
        commonValues.append(root)
    }
    else if (root.val > pNode.val) && (root.val == qNode.val) {
        commonValues.append(root)
    }
    
    if commonValues.count > 1 {
        var lastIndex = commonValues.count - 1
        return commonValues[lastIndex]
    } else {
        return commonValues[0]
    }
    }



lowestCommonAncestor(root, fromRightLeftNodeTwo, fromRightRightNodeTwo)


//func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        
//    guard let root = root else { return nil }
//    guard let pNode = p else { return nil }
//    guard let qNode = q else { return nil }
//    
//    var tempLeftNode = root.left
//    var tempRightNode = root.right
//    
//    if (root.val < pNode.val) && (root.val < qNode.val) {
//        return lowestCommonAncestor(tempRightNode, p, q)
//    }
//    else if (root.val > pNode.val) && (root.val > qNode.val) {
//        return lowestCommonAncestor(tempLeftNode, p, q)
//    }
//    else {
//        // this is the split point, so root is the LCA
//        return root
//    }
//}
//func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//    guard let root = root, let pNode = p, let qNode = q else { return nil }
//    
//    var tempLeftNode = root.left
//    var tempRightNode = root.right
//    var commonValues: [TreeNode] = []
//    
//    if root.val < pNode.val && root.val < qNode.val {
//        return lowestCommonAncestor(tempRightNode, p, q)
//    }
//    else if root.val > pNode.val && root.val > qNode.val {
//        return lowestCommonAncestor(tempLeftNode, p, q)
//    }
//    else if root.val == pNode.val && root.val <= qNode.val {
//        commonValues.append(root)
//    }
//    else if root.val == qNode.val && root.val >= pNode.val {
//        commonValues.append(root)
//    }
//    else if (root.val > pNode.val && root.val < qNode.val) ||
//            (root.val < pNode.val && root.val > qNode.val) {
//        commonValues.append(root)
//    }
//    
//    // At this point commonValues is guaranteed to have exactly one element
//    return commonValues[0]
//}




//func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//    guard let root = root, let pNode = p, let qNode = q else { return nil }
//    
//    var tempLeftNode = root.left
//    var tempRightNode = root.right
//    var commonValues: [TreeNode] = []
//    var result: TreeNode? = nil
//    
//    if root.val < pNode.val && root.val < qNode.val {
//        result = lowestCommonAncestor(tempRightNode, p, q)
//    }
//    else if root.val > pNode.val && root.val > qNode.val {
//        result = lowestCommonAncestor(tempLeftNode, p, q)
//    }
//    else if root.val == pNode.val && root.val <= qNode.val {
//        commonValues.append(root)
//    }
//    else if root.val == qNode.val && root.val >= pNode.val {
//        commonValues.append(root)
//    }
//    else if (root.val > pNode.val && root.val < qNode.val) ||
//            (root.val < pNode.val && root.val > qNode.val) {
//        commonValues.append(root)
//    }
//    
//    if !commonValues.isEmpty {
//        return commonValues[0]
//    } else if root.left == nil{
//        return qNode
//    } else {
//        return pNode
//    }
//    
//    //return result   // may be nil, but that’s okay because our recursion guarantees an answer
//}



//func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        
//    guard let root = root else { return nil }
//    guard let pNode = p else { return nil }
//    guard let qNode = q else { return nil }
//    
//    var tempLeftNode = root.left
//    var tempRightNode = root.right
//    
//    var commonValues:[TreeNode] = []
//    
//    if (root.val < pNode.val) && (root.val < qNode.val) {
//        // go right
//        let node = lowestCommonAncestor(tempRightNode, p, q)
//        if let n = node { commonValues.append(n) }
//    }
//    else if (root.val > pNode.val) && (root.val > qNode.val) {
//        // go left
//        let node = lowestCommonAncestor(tempLeftNode, p, q)
//        if let n = node { commonValues.append(n) }
//    }
//    else {
//        // split point → record root
//        commonValues.append(root)
//    }
//    
//    let lastIndex = commonValues.count - 1
//    return commonValues[lastIndex]
//}



func levelOrder(_ root: TreeNode?)  {
    guard let root = root else { return }
    
    var valaues:[[Int]] = [[]]
    var addValue: [Int] = []
    var tempLeftNode = root.left
    var tempRightNode = root.right
    
    
    
    
    var nodeOne = helperTraversal(tempLeftNode)
    var nodeTwo = helperTraversal(tempRightNode)
    }



func helperTraversal(_ root: TreeNode?) -> TreeNode? {
    
    
    return helperTraversal()
}



levelOrder(root)

