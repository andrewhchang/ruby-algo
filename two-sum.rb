# Explanation:
# The goal is to return the indexes for the two numbers whose
# sum give the target value.

# We can use a hash to keep numbers we have already seen, and their
# indexes {"7" => "0"}

# For every number, we find its complement and check whether we've already
# seen it, using the hash. If yes then return the result. If no, then add
# the number to the list of seen values.

def two_sum(nums, target)
    seen = {}
    nums.each_with_index { |number, index|
        target_diff = target - number
        if seen.has_key[target_diff]
            return [seen[target_diff], index]
        end
        seen[number] = index
    }
end