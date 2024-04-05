# @param {Integer[][]} pairs
# @return {Integer}
def find_longest_chain(pairs)
  pairs = pairs.sort_by{|x| x[1]}
  count = 1
  previous = pairs[0][1]

  for i in 1..pairs.length-1
    if pairs[i][0] > previous
      count += 1
      previous = pairs[i][1]
    end
  end

  count
end
