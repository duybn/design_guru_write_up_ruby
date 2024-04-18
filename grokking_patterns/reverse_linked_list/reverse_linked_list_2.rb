# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  return head if head.next.nil? || left == right

  count = 1
  l = head
  r = head
  prev_l = nil

  while(count < left)
    prev_l = l
    l = l.next
    count += 1
  end

  r = l

  while(count < right)
    r = r.next
    count += 1
  end

  next_r = r.next

  prev = nil
  nex = l

  while(prev != r)
    nex_nex = nex.next
    nex.next = prev
    prev = nex
    nex = nex_nex
  end

  prev_l&.next = r
  l.next = next_r

  prev_l.nil? ? r : head
end
