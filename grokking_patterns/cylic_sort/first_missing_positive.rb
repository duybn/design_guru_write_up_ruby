# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  n = nums.length

  for i in 0..n-1
    while(nums[i] > 0 && nums[i] <= n && nums[nums[i] - 1] != nums[i])
      nums[nums[i] - 1], nums[i] = nums[i], nums[nums[i] - 1]
    end
  end

  for i in 0..n-1
    return i+1 if nums[i] != i+1
  end

  return n+1
end
