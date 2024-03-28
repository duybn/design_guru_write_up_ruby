# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  for i in 0..(s.length-1)/2
    s[i], s[s.length-1-i] = s[s.length-1-i], s[i]
  end
end
