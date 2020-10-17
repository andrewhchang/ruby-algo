# Here the goal is to find when two singly-linked lists share a
# node, aka an intersection. To solve this we simply traverse both
# lists at the same time, marking each node as seen as we traverse.
# When we find an existing node, we can say we've found an intersection.
# Note that this could have probably been faster by not iterating through
# both lists at the same time, as the check for node existence occurs
# every time, even if we've finished traversing that linked list.
def getIntersectionNode(headA, headB)
    seen = {}
    while headA || headB
        if headA
            if seen[headA]
                return headA
            else
                seen[headA] = true
            end
        headA = headA.next
        end
        if headB
            if seen[headB]
                return headB
            else
                seen[headB] = true
            end
        headB = headB.next
        end
    end
    return nil
end
