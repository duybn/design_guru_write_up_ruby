# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  double_queue = []
  n = nums.length
  res = Array.new(n-k+1, 0)
  r_idx = 0

  for i in 0..n-1
    while(!double_queue.empty? && double_queue[0] < i-k+1)
      double_queue.shift
    end

    while(!double_queue.empty? && nums[double_queue[-1]] < nums[i])
      double_queue.pop
    end

    double_queue.push(i)

    if i >= k - 1
      res[r_idx] = nums[double_queue[0]]
      r_idx += 1
    end
  end

  res
end
