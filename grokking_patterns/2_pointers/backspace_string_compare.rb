# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  stack1 = []

  for i in 0..s.length-1
    if s[i] != '#'
      stack1 << s[i]
    else
      stack1.pop
    end
  end

  stack2 = []

  for i in 0..t.length-1
    if t[i] != '#'
      stack2 << t[i]
    else
      stack2.pop
    end
  end

  stack1 == stack2
end
