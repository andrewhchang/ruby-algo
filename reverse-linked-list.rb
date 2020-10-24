# The goal here is to reverse a linked list.
# We start at nil to implement a stack-like structure, and then attach 
# each 'next' property to the top of the stack. The pointer variable holds
# the reference to the 2nd element from the top of the stack, reason being
# that when we reach the end of the iteration, the top element of the stack will be nil
def reverse_list(head)
    pointer = nil
    current = head 
    while !current.nil?
        temp = current.next
        current.next = pointer
        pointer = current
        current = temp
    end
    pointer
end
