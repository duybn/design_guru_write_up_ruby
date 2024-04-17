# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  n = nums.length
  res = []

  for i in 0..n-1
    idx = nums[i].abs

    if nums[idx-1] < 0
      res << idx
    else
      nums[idx-1] *= -1
    end
  end

  res
end
