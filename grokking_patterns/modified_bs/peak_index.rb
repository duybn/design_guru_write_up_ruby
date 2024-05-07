# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(nums)
  n = nums.length
  l = 0
  r = n-1

  while(l <= r)
    mid = (l+r)/2
    return mid if nums[mid] > nums[mid-1] && nums[mid] > nums[mid+1]

    if nums[mid] > nums[mid-1] && nums[mid] < nums[mid+1]
      l = mid
    else
      r = mid
    end
  end
end
