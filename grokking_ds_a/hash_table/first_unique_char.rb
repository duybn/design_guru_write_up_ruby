# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  a = Hash.new

  for i in 0..s.length-1
    a[s[i]] = 0 if a[s[i]].nil?
    a[s[i]] += 1
  end

  for i in 0..s.length-1
    return i if a[s[i]] == 1
  end

  -1
end
