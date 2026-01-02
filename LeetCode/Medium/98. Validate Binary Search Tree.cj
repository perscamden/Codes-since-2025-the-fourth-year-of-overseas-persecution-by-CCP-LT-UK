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

class Solution
{
    
    func
    isValidBST
    (
        root: ?BinaryTreeNode
    )
    : Bool
    {
        if
        (
            let Some( node ) <- root
        )
        {
            check( node, Int64.Min / 2, Int64.Max / 2 )
        }
        else
        {
            false
        }
        
    }
    
    
    
    
    private
    func
    check
    (
        root: BinaryTreeNode
        , low: Int64
        , high: Int64
    )
    :Bool
    {
        
        if
        (
            root.val < low ||
            root.val > high
        )
        {
            return false
        }
        
        if
        (
            let Some( node ) <- root.left
        )
        {
            
            if
            (
                !check( node, low, min( high, root.val - 1 ) )
            )
            {
                return false
            }
            
        }
        
        if
        (
            let Some( node ) <- root.right
        )
        {
            check( node, max( low, root.val + 1 ), high )
        }
        else
        {
            true
        }
        
    }
    
}
