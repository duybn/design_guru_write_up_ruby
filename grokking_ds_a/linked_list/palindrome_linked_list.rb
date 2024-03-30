# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  slow = head
  fast = head

  while(!fast.nil? && !fast.next.nil?)
    slow = slow.next
    fast = fast.next.next
  end

  prev = slow
  slow = slow.next
  prev.next = nil

  while(!slow.nil?)
    temp = slow.next
    slow.next = prev
    prev = slow
    slow = temp
  end

  fast = head
  slow = prev

  while(!slow.nil?)
    return false if slow.val != fast.val

    slow = slow.next
    fast = fast.next
  end

  true
end
