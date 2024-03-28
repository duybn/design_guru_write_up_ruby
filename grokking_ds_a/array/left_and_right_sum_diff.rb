# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
  n = nums.length
  res = Array.new(n, 0)
  sum = nums.sum
  left = 0
  res[0] = sum - nums[0]

  for i in 1..n-1
    left += nums[i-1]
    right = sum - nums[i] - left
    res[i] = (right - left).abs
  end

  res
end
