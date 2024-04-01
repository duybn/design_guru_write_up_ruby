# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  a, b = Hash.new, Hash.new

  for i in 0..ransom_note.length-1
    a[ransom_note[i]] = 0 if a[ransom_note[i]].nil?
    a[ransom_note[i]] += 1
  end

  for i in 0..magazine.length-1
    b[magazine[i]] = 0 if b[magazine[i]].nil?
    b[magazine[i]] += 1
  end

  ('a'..'z').each do |chr|
    return false if a[chr].to_i > b[chr].to_i
  end

  true
end
