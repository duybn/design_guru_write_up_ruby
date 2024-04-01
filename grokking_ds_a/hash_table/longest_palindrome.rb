# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  a = Hash.new

  for i in 0..s.length-1
    a[s[i]] = 0 if a[s[i]].nil?
    a[s[i]] += 1
  end

  total_even = 0
  total_odd = 0
  num_odd = 0

  ('a'..'z').each do |char|
    next if a[char].to_i == 0
    if a[char] % 2 == 1
      total_odd += a[char]
      num_odd += 1
    else
      total_even += a[char]
    end
  end

  ('A'..'Z').each do |char|
    next if a[char].to_i == 0
    if a[char] % 2 == 1
      total_odd += a[char]
      num_odd += 1
    else
      total_even += a[char]
    end
  end

  num_odd > 0 ? total_even + total_odd - (num_odd-1): total_even
end
