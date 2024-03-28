# @param {String} s
# @return {Boolean}
def is_valid(s)
  pairs = [['(', ')'], ['{', '}'], ['[', ']']]
  stack = []

  for i in 0..s.length-1
    if s[i] == '[' || s[i] == '(' || s[i] == '{'
      stack.push(s[i])
    else
      return false if stack.empty?
      return false unless pairs.include?([stack[-1], s[i]])

      stack.pop
    end
  end

  stack.empty?
end
