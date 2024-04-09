# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  nums.tally.reduce(0) { |accumulator, i| accumulator + i[1] * (i[1] - 1)/2 }
end
