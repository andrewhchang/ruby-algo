# The goal here is to merge two singly-linked lists (defined below) and return the 
# first node, which will contain iterative references to each other node in the list.
# Just assign the max value between two node heads, and then that reassign the next
# value in that linked list as the current node - then recurse.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
def merge_two_lists(l1, l2)
    ret = nil
    if (!l1 && !l2)
        return []
    end
    return l1 if !l2
    return l2 if !l1
    
    if l1.val < l2.val
        ret = l1
        l1 = l1.next
    else
        ret = l2
        l2 = l2.next
    end
    working = ret
    
    while (l1 && l2)
        if l1.val <= l2.val
            working.next = l1
            l1 = l1.next
        else
            working.next = l2
            l2 = l2.next
        end
        working = working.next
    end
    
    working.next = l1 || l2
    return ret
end
