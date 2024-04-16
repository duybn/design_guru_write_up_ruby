# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  n = nums.length
  i = 0

  for i in 0..n-1
    idx = nums[i].abs
    return idx if nums[idx] < 0

    nums[idx] *= -1
  end
end
