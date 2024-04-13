# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  n = nums.length
  curr_sum = 0
  j = 0
  min = 10**6

  for i in 0..n-1
    curr_sum += nums[i]

    if curr_sum >= target
      min = [min, i -j +1].min
      while(curr_sum >= target && j <= i)
        curr_sum -= nums[j]

        if curr_sum >= target
          min = [min, i -j].min
        end

        j += 1
      end
    end
  end

  min == 10 ** 6 ? 0 : min
end
