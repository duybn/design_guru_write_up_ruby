# @param {String} s
# @param {String[]} dictionary
# @return {Integer}
def min_extra_char(s, dictionary)
  n = s.length
  max_val = n+1
  dp = Array.new(n+1, max_val)
  dp[0] = 0

  (1..s.length).each do |i|
    dp[i] = dp[i - 1] + 1

    (1..i).each do |l|
      if dictionary.include?(s[i - l..i-1])
        dp[i] = [dp[i], dp[i - l]].min
      end
    end
  end

  dp[-1]
end
