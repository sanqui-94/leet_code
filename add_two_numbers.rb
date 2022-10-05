# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  return resolver(l1, l2, false, ListNode.new(0, nil))
end


def resolver(l1, l2, carry, l3)
  if l1 == nil && l2 == nil
    if carry
      l3.val = 1
      return l3
    else
      return nil
    end
  elsif l1 != nil && l2 == nil
    value = l1.val
    value += 1 if carry
    carry = false

    if value > 9
      value = value % 10
      carry = true
    end

    l3.val = value
    l3.next = resolver(l1.next, nil, carry, ListNode.new(0, nil))
    return l3
  elsif l2 != nil && l1 == nil
    value = l2.val
    value += 1 if carry
    carry = false

    if value > 9
      value = value % 10
      carry = true
    end

    l3.val = value
    l3.next = l3.next = resolver(nil, l2.next, carry, ListNode.new(0, nil))
    return l3
  else
    value = l1.val + l2.val
    value += 1 if carry
    carry = false

    if value > 9
      value = value % 10
      carry = true
    end

    l3.val = value
    l3.next = resolver(l1.next, l2.next, carry, ListNode.new(0, nil))

    return l3
  end
end
