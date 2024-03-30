# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return [list1, list2].compact[0] if list1.nil? || list2.nil?

  if list1.val >= list2.val
    head = list2
    list2 = list2.next
  else
    head = list1
    list1 = list1.next
  end

  curr = head

  while(!list1.nil? && !list2.nil?)
    prev = curr

    if list1.val >= list2.val
      curr = list2
      list2 = list2.next
    else
      curr = list1
      list1 = list1.next
    end

    prev.next = curr
  end

  while(!list1.nil?)
    prev = curr
    curr = list1
    prev.next = curr
    list1 = list1.next
  end

  while(!list2.nil?)
    prev = curr
    curr = list2
    prev.next = curr
    list2 = list2.next
  end

  head
end
