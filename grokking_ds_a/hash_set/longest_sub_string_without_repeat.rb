# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  n = s.length
  max = 0
  a = Hash.new
  j = 0

  for i in 0..n-1
    while(a[s[i]].to_i > 0 && j < i)
      a[s[j]] -= 1
      j += 1
    end

    a[s[i]] = 0 if a[s[i]].nil?
    a[s[i]] += 1

    if s[i] == s[j] && i > j
      j += 1
    end
    max = [max, i-j+1].max
  end

  max
end
