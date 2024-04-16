# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  n = nums.length
  j = 0
  count_1 = 0
  max = 0

  for i in 0..n-1
    if nums[i] == 1
      count_1 += 1
    else
      if (i-j+1-count_1 > k)
        while(i-j+1-count_1 > k && j <= i)
          count_1 -= 1 if nums[j] == 1
          j += 1
        end
      end
    end

    max = [max, i-j+1].max
  end

  max
end
