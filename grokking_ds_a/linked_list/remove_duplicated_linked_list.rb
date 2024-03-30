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
def delete_duplicates(head)
  curr = head

  while(!curr.nil?)
    nex = curr.next

    while(!nex.nil? && nex.val == curr.val)
      nex = nex.next
    end

    curr.next = nex
    curr = curr.next
  end

  head
end
