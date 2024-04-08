# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
  n = nums.length
  return nums if n <= 1

  left = sort_array(nums[0...n/2])
  right = sort_array(nums[n/2..-1])

  return merge(left, right)
end

def merge(arr1, arr2)
  res = []
  i, j = 0, 0

  while(i < arr1.length && j < arr2.length)
    if arr1[i] > arr2[j]
      res << arr2[j]
      j += 1
    else
      res << arr1[i]
      i += 1
    end
  end

  while(i < arr1.length)
    res << arr1[i]
    i += 1
  end

  while(j < arr2.length)
    res << arr2[j]
    j += 1
  end

  res
end
