# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  n = nums.length

  for i in 1..n-1
    nums[i] = nums[i-1] + nums[i]
  end

  nums
end
