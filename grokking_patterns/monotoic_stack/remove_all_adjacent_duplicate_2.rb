# @param {String} s
# @param {Integer} k
# @return {String}
def remove_duplicates(s, k)
  stack = []
  count = 0

  for i in 0..s.length-1
    if stack.empty?
      stack.push([s[i], 1])
    else
       if s[i] == stack[-1][0]
        stack[-1][1] += 1
      else
        stack.push([s[i], 1])
      end
    end

    if stack[-1][1] >= k
      stack.pop
    end
  end

  res = ''

  for i in 0..stack.length-1
    res.concat(stack[i][0] * stack[i][1])
  end

  res
end
