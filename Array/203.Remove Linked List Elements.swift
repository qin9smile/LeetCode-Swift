/// 203. Remove Linked List Elements
/// 删除链表中等于给定值 val 的所有节点。
/// 示例:
/// 输入: 1->2->6->3->4->5->6, val = 6
/// 输出: 1->2->3->4->5

/// https://leetcode-cn.com/problems/remove-linked-list-elements/description/
///
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var _pre = ListNode(-val)
    _pre.next = head
    
    var _current = _pre
    while _current.next != nil {
        if _current.next!.val == val {
            _current.next = _current.next!.next
        } else {
            _current = _current.next!
        }
    }
    
    return _pre.next
}
