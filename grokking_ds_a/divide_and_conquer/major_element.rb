# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  n = nums.length
  cnt = 0
  major = nil

  for i in 0..n-1
    if cnt == 0 || major == nums[i]
      major = nums[i]
      cnt += 1
    else
      cnt -= 1
    end
  end

  major
end
