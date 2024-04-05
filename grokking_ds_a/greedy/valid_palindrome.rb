# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  for i in 0..s.length/2
    if s[i] != s[s.length-1-i]
      if i == 0
        return is_palindrome(s[1..-1]) || is_palindrome(s[0..-2])
      else
        return is_palindrome(s[0..i-1] + s[i+1..-1]) || is_palindrome(s[0..s.length-2-i] + s[s.length-i..-1])
      end
    end
  end

  true
end

def is_palindrome(s)
  for i in 0..s.length/2
    return false if s[i] != s[s.length-1-i]
  end

  true
end
