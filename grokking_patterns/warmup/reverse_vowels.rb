# @param {String} s
# @return {String}
def reverse_vowels(s)
  n = s.length
  vowels = []

  for i in 0..n-1
    vowels << s[i] if 'aeiou'.include?(s[i].downcase)
  end

  for i in 0..n-1
    if 'aeiou'.include?(s[i].downcase)
      s[i] = vowels.pop
    end
  end

  s
end
