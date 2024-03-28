# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  max = 0
  curr = 0

  for i in 0..gain.length-1
    curr += gain[i]
    max = [max, curr].max
  end

  max
end
