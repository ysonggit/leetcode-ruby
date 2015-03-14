require_relative 'list'

#two pointers
# @param {ListNode} head
# @return {ListNode}
def remove_nth_from_end(head, n)
  if head == nil || n <= 0
    return head
  end
  dummy = ListNode.new(-1)
  dummy.next = head
  fast = dummy
  slow = dummy
  while n>0
      fast = fast.next
      n -= 1
  end
  while fast.next != nil do
    fast = fast.next
    slow = slow.next
  end
  slow.next = slow.next.next
  return dummy.next
end


a = ListNode.new(1)
b= ListNode.new(2)
c = ListNode.new(3)

a.next = b
b.next = c

print_list(a)
print_list(remove_nth_from_end(a, 1))

n = ListNode.new(9)
print_list(remove_nth_from_end(n,1))
