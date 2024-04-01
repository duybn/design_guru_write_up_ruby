# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  a = Hash.new

  for i in 0..text.length-1
    a[text[i]] = 0 if a[text[i]].nil?
    a[text[i]] += 1
  end

  max = 10**5
  max = [a['b'].to_i, a['a'].to_i, a['o'].to_i/2, a['l'].to_i/2, a['n'].to_i].min
  max
end
