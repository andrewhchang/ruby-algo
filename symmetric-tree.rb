# The goal here is to compare whether a binary tree is symmetrical around the middle.
#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# The strategy here is to try and think of the individual branches as single paths.
# My mistake earlier was to try and match sibling node patterns [left, right] == [right, left]
# The nature of symmetry means that certain branches will be exactly the same. Therefore,
# you should compare only two paths at one time, the ones that should match, recursing
# on every match until you get nil == nil.

def is_symmetric(root)
    return true if root.nil? || (!root.left && !root.right)
    if root.left && root.right
        compare_branch(root.left, root.right)
    else
        return false
    end
end

def compare_branch(left, right)
    return true if left.nil? && right.nil?
    if left && right && left.val == right.val
        compare_branch(left.left, right.right) && compare_branch(left.right, right.left)
    else
        return false
    end
end
