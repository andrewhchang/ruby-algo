# The goal here is to invert a binary tree, inspired by a popular tweet from the creator of
# Homebrew, where he was rejected from Google even though he build a piece of software used
# by the vast majority of Google engineers.
# The strategy here is to divide the problem into the smallest subproblem, from which point
# we can recurse. We simply swap the left and right nodes, and then recurse on each of the
# node's children.
def invert_tree(root)
    return root if root.nil?
    if(root.left || root.right)
        return invert(root)
    end
    root
end

def invert(root)
    temp = root.left
    root.left = root.right
    root.right = temp
    if(root.left)
        root.left = invert(root.left)
    end
    if(root.right)
        root.right = invert(root.right)
    end
    root
end

# Simpler solution that uses multiple assignment

def invert_tree(root)
  return if root.nil?
  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)
end

