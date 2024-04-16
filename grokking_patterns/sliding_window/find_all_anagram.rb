# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, pi)
  m, n = s.length, pi.length
  res = []
  return res if m < n

  count_pi = Hash.new
  count_s = Hash.new

  for i in 0..n-1
    count_pi[pi[i]] = 0 if count_pi[pi[i]].nil?
    count_pi[pi[i]] += 1
  end

  for i in 0..m-1
    count_s[s[i]] = 0 if count_s[s[i]].nil?
    count_s[s[i]] += 1

    if i >= n-1
      flag = true
      ('a'..'z').to_a.each do |char|
        if count_s[char] != count_pi[char] && [count_s[char].to_i, count_pi[char].to_i].max > 0
          flag = false
        end
      end

      res << i-n+1 if flag
      count_s[s[i-n+1]] -= 1
    end
  end

  res
end
