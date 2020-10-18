# The goal here is to find the element that occurs the most times in the
# array. The element is always present and will appear always more than n/2
# times. The strategy here is pretty simple - we keep a counter of the current
# majority and the value it corresponds to. We could use hash but really no need.
# There is an O(n) time and O(1) space solution using the Boyer-Moore Majority
# Vote algorithm worth noting.
def majority_element(nums)
    return nums[0] if nums.length == 1 
    arr = nums.sort
    count = 0
    max = 0
    ret = nil
    arr.each_with_index { |i, j|
        if (count >= nums.length/2.0)
            return i
        end
        if arr[j + 1] == i
            count += 1
            next
        end
        if count > max
            max = count
            ret = i
        end
        count = 0
    }
    return ret
end
