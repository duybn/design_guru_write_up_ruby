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
def remove_nodes(head)
  stack = []
  curr = head

  while(!curr.nil?)
    while(!stack.empty? && stack[-1].val < curr.val)
      stack.pop
    end
    stack.push(curr)
    curr = curr.next
  end

  for i in 0..stack.length-2
    stack[i].next = stack[i+1]
  end

  stack[0]
end
