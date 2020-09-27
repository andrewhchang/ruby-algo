# The goal here is to find the maximum depth of the farthest leaf (node with no children)
# Given a binary tree:
#     3
#    / \
#   9  20
#     /  \
#    15   7
# We should return 3
# The strategy here would be to use a recursion to find the children of each node.
# We can return the depth when the child has no children. If it does have children
# we recurse until no more children, incrementing depth each time.
def max_depth(root)
    return 0 unless root
    return find_nodes(root, 1)
end

def find_nodes(node, depth)
    if !node.left && !node.right
        return depth
    end
    
    if node.left && node.right
        return [find_nodes(node.left, depth + 1), find_nodes(node.right, depth + 1)].max
    elsif node.left
        return find_nodes(node.left, depth + 1)
    else
        return find_nodes(node.right, depth + 1)
    end
end
