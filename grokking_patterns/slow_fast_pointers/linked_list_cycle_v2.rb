# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  slow = head
  fast = head
  entry = head
  return nil if head.nil? || head.next.nil?

  while(!fast.nil? && !fast.next.nil?)
    slow = slow.next
    fast = fast.next.next

    if slow == fast
      while(slow != entry)
        slow = slow.next
        entry = entry.next
      end

      return entry
    end
  end

  return nil
end
