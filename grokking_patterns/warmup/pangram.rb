# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  a = Hash.newac

  for i in 0..sentence.length-1
    a[sentence[i]] = 1
  end

  ('a'..'z').to_a.each do |chr|
    return false if a[chr].nil?
  end

  true
end
