# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  count = Hash.new

  for i in 0..s.length-1
    count[s[i]] = 0 if count[s[i]].nil?
    count[s[i]] += 1
  end

  stack = []

  for i in 0..s.length-1
    if stack.empty?
      stack.push(s[i])
    else
      while(!stack.empty? && count[stack[-1]] >= 1 && stack[-1] > s[i] && !stack.include?(s[i]))
        stack.pop
      end

      stack.push(s[i]) if !stack.include?(s[i])
    end

    count[s[i]] -= 1
  end

  stack.join('')
end
