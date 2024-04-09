# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  n = numbers.length
  i = 0
  j = n-1

  while(numbers[i] + numbers[j] != target)
    if numbers[i] + numbers[j] > target
      j -= 1
    else
      i += 1
    end
  end

  [i+1, j+1]
end
