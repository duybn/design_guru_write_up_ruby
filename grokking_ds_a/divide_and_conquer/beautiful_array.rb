# @param {Integer} n
# @return {Integer[]}
def beautiful_array(n)
  res = [1]

  while(res.length < n)
    temp = []

    res.each do |num|
      temp << num * 2 - 1 if num * 2 - 1 <= n
    end

    res.each do |num|
      temp << num * 2  if num * 2  <= n
    end

    res = temp
  end

  res
end
