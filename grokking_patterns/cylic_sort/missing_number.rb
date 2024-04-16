# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  n = nums.length
  i = 0

  while(i < n)
    idx = nums[i]

    if idx < n && nums[idx] != nums[i]
      nums[idx], nums[i] = nums[i], nums[idx]
    else
      i += 1
    end
  end

  for i in 0..n-1
    return i if nums[i] != i
  end

  return n
end
