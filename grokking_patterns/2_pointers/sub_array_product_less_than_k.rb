# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  n = nums.length
  curr = 1
  i = 0

  while(i < n && curr * nums[i] < k)
    curr *= nums[i]
    i += 1
  end

  res = i
  j = i

  for i in 1..n-1
    curr /= nums[i-1] if curr > 1
    j = [j, i].max

    while(j < n && curr * nums[j] < k)
      curr *= nums[j]
      j += 1
    end

    res += j - i
  end

  res
end
