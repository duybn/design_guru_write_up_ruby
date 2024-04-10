# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  n = nums.length
  temp = nums.sort
  cnt = 0

  for i in 0..n-1
    break if nums[i] != temp[i]
  end

  for j in (n-1).downto(0)
    break if nums[j] != temp[j]
  end

  j > i ? j-i + 1 : 0
end
