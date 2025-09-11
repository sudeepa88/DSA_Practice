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




func freeTreeTraversal(_ root: TreeNode?) {
    guard let root = root else { return }
    var tempLeftNode = root.left
    var tempRightNode = root.right
    
    print("The Value where the current Root is:🟩 ", root.val)

    
    print("\(root.val) Left value \(tempLeftNode?.val), right value  \(tempRightNode?.val)")
    freeTreeTraversal(tempLeftNode)
    print("🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥", tempRightNode?.val , "And Temp Value of left Node", tempLeftNode?.val)
    freeTreeTraversal(tempRightNode)
    
}

freeTreeTraversal(root)
