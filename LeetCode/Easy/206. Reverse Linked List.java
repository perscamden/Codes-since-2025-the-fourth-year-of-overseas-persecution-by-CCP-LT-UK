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
    reverseList
    (
        ListNode head
    )
    {

        if
        (
            head == null
        )
        {
            return null;
        }


        return reverse( null, head );
    }




    private
    ListNode
    reverse
    (
        final ListNode prev
        , final ListNode head
    )
    {
        
        if
        (
            head.next == null
        )
        {
            head.next = prev;


            return head;
        }
        else
        {
            final ListNode next = head.next;
            head.next = prev;
            

            return reverse( head, next );
        }

    }

}
