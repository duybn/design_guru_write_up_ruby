# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  n = nums.length

  for i in 0..n-1
    idx = nums[i].abs
    nums[idx-1] *= -1 if nums[idx-1] > 0
  end

  res = []

  for i in 0..n-1
    res << i+1 if nums[i] > 0
  end

  res
end
