# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  stones.chars.count{|x| jewels.chars.include?(x)}
end
