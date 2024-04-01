# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  arr.tally.values.uniq.length == arr.tally.values.length
end
