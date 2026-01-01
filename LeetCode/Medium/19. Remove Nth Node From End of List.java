/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution
{
    
    public
    ListNode
    removeNthFromEnd
    (
        ListNode head
        , int n
    )
    {
        head = new ListNode( 0, head );
        solve( head, n );
        
        
        return head.next;
    }
    
    
    
    private
    int
    solve
    (
        final ListNode head
        , int n
    )
    {
        
        if
        (
            head == null
        )
        {
            return n;
        }
        
        n = solve( head.next, n );
        
        if
        (
            n == 0
        )
        {
            head.next = head.next.next;
        }
        
        
        return n - 1;
    }
    
}
