# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  len = nums.length
  res = []

  for i in 1..len-2
    m = 0
    n = len - 1
    next if i > 1 && nums[i] == nums[i-2] && nums[i] == 0

    while(m < i && n > i)
      if nums[m] + nums[n] + nums[i] == 0
        res << [nums[m], nums[i], nums[n]]

        m += 1
        n -= 1

         while(m > 0 && nums[m] == nums[m-1])
          m += 1
        end

         while(n < len-1 && nums[n] == nums[n+1])
          n -= 1
        end
      elsif nums[m] + nums[n] + nums[i] > 0
        n -= 1
      else
        m += 1
      end
    end
  end

  res.uniq
end
