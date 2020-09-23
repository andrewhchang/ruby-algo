# Here we should return the length of shortest subarray that, 
# when sorted, will result in the entire array being sorted.
# e.g [1,2,3,4,5,5,4,3,2,3]
# subarray would be [4,5,5,4,3,2,3], when sorted, is all sorted.
# answer would be 7

def find_unsorted_subarray(nums)
    # find the first element out of order
    first_index = nil
    (0..nums.length - 2).each { |i|
        if (nums[i + 1] < nums[i])
            first_index = i
            break
        end
    }
    
    # find the first element out of order from the back
    last_index = nil
    (nums.length - 1).downto(1) { |i|
        if (nums[i - 1] > nums[i])
            last_index = i
            break
        end
    }
    
    if (first_index == nil || last_index == nil)
        return 0
    end
    candidate_arr = nums[first_index..last_index]
    min = candidate_arr.min()
    maxnum = candidate_arr.max()
    # find the first number if any that is smaller than the min
    (0..nums.rindex(min)).each do |i|
        if nums[i] > min
            first_index = i
            break
        end
    end
    
    # find the first number if any that is large than the max from the back
    (nums.length - 1).downto(nums.index(maxnum)) { |i|
        if nums[i] < maxnum 
            last_index = i
            break
        end
    }
    return nums[first_index..last_index].length
end
