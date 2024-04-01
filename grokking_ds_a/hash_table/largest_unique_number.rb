# @param {String} s
# @return {Integer}
def largest_unique(nums)
  a = Hash.new

  for i in 0..nums.length-1
    a[nums[i]] = 0 if a[nums[i]].nil?
    a[nums[i]] += 1
  end

  max = -1

  for i in 0..nums.length-1
    if a[nums[i]] == 1
        max = [max, nums[i]].max
    end
  end

  max
end
