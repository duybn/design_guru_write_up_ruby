# @param {String} s
# @return {String}
def remove_stars(s)
  stack = []

  for i in 0..s.length-1
    if s[i] == '*'
      stack.pop
    else
      stack << s[i]
    end
  end

  stack.join('')
end
