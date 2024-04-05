# @param {Integer[]} nums
# @return {Integer}
def minimum_deletions(nums)
  max_idx = nums.index(nums.max)
  min_idx = nums.index(nums.min)
  n = nums.length
  [[max_idx, min_idx].max + 1, n-[max_idx, min_idx].min, [max_idx, min_idx].min + 1 + n - [max_idx, min_idx].max].min
end
