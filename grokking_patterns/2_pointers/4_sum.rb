# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  n = nums.length
  nums = nums.sort
  a = Hash.new
  b = Hash.new

  return [] if n <= 3

  for i in 0..n-1
    for j in i+1..n-1
      curr = nums[i] + nums[j]
      a[curr] = [] if a[curr].nil?
      a[curr] << [i, j] if b[[nums[i], nums[j]]].nil?
      b[[nums[i], nums[j]]] = 1
    end
  end

  res = []

  for i in 0..n-1
    for j in i+1..n-1
      curr = nums[i] + nums[j]
      need = target - curr
      next if a[need].nil?

      a[need].each do |pair|
        next if !([i, j] & pair).empty?
        res << [nums[i], nums[j], nums[pair[0]], nums[pair[1]]].sort
      end
    end
  end

  res.uniq
end
