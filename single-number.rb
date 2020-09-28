# Task here is to find the single number in an array of random pairs.
# There are a number of approaches for this. This approach sorts the array
# and steps through by 2 to check the number that comes after it. If no match,
# its not a pair and is the single number. There's a clever solution using
# bitwise operations XOR to cancel out duplicates. Maybe research bitwise ops.

def single_number(nums)
    sorted = nums.sort
    0.step(nums.length - 1, 2).each { |i|
        return sorted[i] if sorted[i] != sorted[i+1]
    }
end
