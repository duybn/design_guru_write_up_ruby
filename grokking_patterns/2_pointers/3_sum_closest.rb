# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums = nums.sort
  len = nums.length
  closest = 10 ** 10
  res = 0

  for i in 1..len-2
    m = 0
    n = len-1

    while(m < i && n > i)
      curr_sum = nums[m] + nums[i] + nums[n]

      if (curr_sum - target).abs < closest
        closest = (curr_sum - target).abs
        res = curr_sum

        if curr_sum > target
          n -= 1
        else
          m += 1
        end

        while(m < i && nums[m] == nums[m-1])
          m += 1
        end

        while(n > i && nums[n] == nums[n+1])
          n -= 1
        end
      elsif curr_sum > target
        n -= 1
      else
        m += 1
      end
    end
  end

  res
end
