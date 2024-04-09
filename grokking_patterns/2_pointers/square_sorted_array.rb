# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  n = nums.length
  i = 0
  j = n-1
  res = []

  while(i <= j)
    if nums[i].abs >= nums[j].abs
      res << nums[i] ** 2
      i += 1
    else
      res << nums[j] ** 2
      j -= 1
    end
  end

  res.reverse
end
