/**
 * Definition for a binary tree node.
 * public class BinaryTreeNode {
 *     public var val: Int64
 *     public var left: ?BinaryTreeNode
 *     public var right: ?BinaryTreeNode
 *     public init() {
 *         val = 0
 *         left = None
 *         right = None
 *     }
 *     public init(val: Int64) {
 *         this()
 *         this.val = val
 *     }
 * }
 */

class BSTIterator
{
    let iterator: ArrayDeque < Int64 >
    
    
    
    
    init
    (
        root: ?BinaryTreeNode
    )
    {
        iterator = ArrayDeque < Int64 > ()
        addToIterator( root )
    }
    
    
    
        
    func
    next
    ()
    : Int64
    {
        iterator.removeFirst() ?? -1
    }
    
    
    
    
    func
    hasNext
    ()
    : Bool
    {
        !iterator.isEmpty()
    }
    
    
    
    
    func
    addToIterator
    (
        root: ?BinaryTreeNode
    )
    : Unit
    {
        
        if
        (
            let Some( node ) <- root
        )
        {
            addToIterator( node.left )
            iterator.addLast( node.val )
            addToIterator( node.right )
        }
        
    }
        
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * let obj: BSTIterator = BSTIterator(root)
 * let param_1 = obj.next()
 * let param_2 = obj.hasNext()
 */