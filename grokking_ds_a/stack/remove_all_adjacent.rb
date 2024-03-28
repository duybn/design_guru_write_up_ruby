# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []

  for i in 0..s.length-1
    stack << s[i]

    unless stack.length <= 1
      while(stack.length > 1 && stack[-1] == stack[-2])
        stack.pop
        stack.pop
      end
    end
  end

  stack.join('')
end
