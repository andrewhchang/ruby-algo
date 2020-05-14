# DP technique to find the longest increasing sum of any subarray in given array

ar = [-3, 6, -7, 3, 7, -9, 11, 15, 21, -2, 0, 2, 5]

def kadanes(input)
  max = 0
  temp = 0

  input.each do |num|
    temp = [0, num].max + num
    max = [temp, max].max
  end

  max
end

puts kadanes(ar)
