# Classic DP problem. Find the maximum sum of non-negative integers without adding
# two adjacent integers. The trick here is to keep a "history" of calculated maximums
# to compare to. Once we have the first two elements, i.e. the max of the first two ints,
# we can then proceed to calculate whether to leave, or add the the next house.
# decision = the previous maximum vs. 2nd last maximum + current element
# add this decision to the "history" of sums. Return the last element as that will be the
# highest sum.
def rob(nums)
    return 0 if nums.length == 0
    return nums[0] if nums.length == 1
    return [nums[0], nums[1]].max if nums.length == 2
    maxes = []
    maxes[0] = nums[0]
    maxes[1] = [maxes[0], nums[1]].max
    (2..nums.length - 1).each { |i|
        maxes[i] = [maxes[i - 1], maxes[i - 2] + nums[i]].max
    }
    maxes[-1]
end
