
class ListNode
  attr_accessor :val, :next # set and get instance variable
  def initialize(val)
    @val = val
    @next = nil
  end
end

def print_list(head)
  cur = head
  full_list = Array.new
  while cur != nil
    full_list += [cur.val.to_s]
    cur = cur.next
  end
  puts full_list.join(" -> ")
end

