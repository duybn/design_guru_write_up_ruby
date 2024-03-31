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
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  curr = head
  nex_1 = head.next
  nex_2 = head.next.next
  head = head.next

  while(!curr.nil? && !nex_1.nil?)
    nex_1.next = curr

    if nex_2&.next.nil?
      curr.next = nex_2
    else
      curr.next = nex_2.next
    end

    nex_1 = nex_2&.next
    curr = nex_2
    nex_2 = nex_2&.next&.next
  end

  return head
end
