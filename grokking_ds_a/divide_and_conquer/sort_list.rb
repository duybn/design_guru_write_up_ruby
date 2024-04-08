# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if head.nil? || head.next.nil?

  slow = head
  fast= head
  prev = slow

  while(!fast.nil? && !fast.next.nil?)
    prev = slow
    slow = slow.next
    fast = fast.next.next
  end

  prev.next = nil
  l1 = sort_list(head)
  l2 = sort_list(slow)

  merge(l1, l2)
end

def merge(l1, l2)
  v_node = ListNode.new(0)
  curr = v_node

  while(!l1.nil? && !l2.nil?)
    if l1.val > l2.val
      curr.next = l2
      l2 = l2.next
    else
      curr.next = l1
      l1 = l1.next
    end

    curr = curr.next
  end

  if !l1.nil?
    curr.next = l1
  end

  if !l2.nil?
    curr.next = l2
  end

  v_node.next
end
