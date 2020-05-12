# Binary search implementation
# We start with a _sorted_ array with a target value to find
# 1. find the middle index of array, and compare to target value
# 2. if lower, we change upperbound index to middle - 1, else middle + 1
# 3. loop until found, if not found, loop exits and we return some other result
# Time: O(log n) Space: 0(n)

def bs(array, target)
  start = 0
  endp = array.length   
  
  while start <= endp
    mid = start + (endp - start)/2
    
    if array[mid] == target
      return mid
    end

    if array[mid] < target 
      start = mid + 1 
    else
      endp = mid - 1
    end
  end
  return 'Not found' 
end

puts bs([1, 3, 5, 6, 7, 8, 9, 12, 14, 16], 1) # => 0
puts bs([1, 3, 5, 6, 7, 8, 9, 12, 14, 16], 16) # => 9
puts bs([1, 3, 5, 6, 7, 8, 9, 12, 14, 16], 12) # => 7
puts bs([1, 3, 5, 6, 7, 8, 9, 12, 14, 16], 10) # => 'Not found'

