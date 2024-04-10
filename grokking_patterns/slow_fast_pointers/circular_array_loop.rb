# @param {Integer[]} nums
# @return {Boolean}
def circular_array_loop(nums)
  n = nums.length
  nex = []

  for i in 0..n-1
    if nums[i] < 0
      nex << (i + n - nums[i].abs) % n
    else
      nex << (i + nums[i]) % n
    end
  end

  print nex

  for i in 0..n-1
    a = Hash.new
    a[i] = 1
    ne = i

    while(true)
      ne = nex[ne]
      break if ne == nex[ne] || nums[ne] * nums[i] < 0
      return true if !a[ne].nil?
      a[ne] = 1
    end
  end

  false
end
