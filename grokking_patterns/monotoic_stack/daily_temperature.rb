# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  n = temperatures.length
  stack = []
  res = Array.new(n, 0)

  for i in 0..n-1
    while(!stack.empty? && temperatures[stack[-1]] < temperatures[i])
      j = stack.pop
      res[j] = i-j
    end

    stack.push(i)
  end

  res
end
