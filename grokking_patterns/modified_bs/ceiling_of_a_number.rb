# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  n = nums.length
  l = 0
  r = n-1
  res = nil

  while(l <= r)
    mid = (l+r)/2
    return [l-1, 0].max if target < nums[l]
    return r+1 if target > nums[r]
    return mid if nums[mid] == target
    return mid+1 if mid < n-1 && nums[mid] < target && nums[mid+1] > target

    if nums[mid] > target
      r = mid
    else
      l = mid+1
    end
  end
end
