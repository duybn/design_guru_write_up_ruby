# @param {String} s
# @return {String}
def longest_nice_substring(s)
  n = s.length
  return '' if n < 2

  set = Set.new

  for i in 0..n-1
    set << s[i]
  end

  for i in 0..n-1
    char = s[i]
    next if set.include?(char.upcase) && set.include?(char.downcase)
    sub1 = longest_nice_substring(s[0...i])
    sub2 = longest_nice_substring(s[i + 1..])
    return sub1.length >= sub2.length ? sub1 : sub2
  end

  return s
end
