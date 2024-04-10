# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  a = Hash.new
  a[n] = 1

  while(n != 1)
    n = n.to_s.chars.map{|x| x.to_i ** 2}.sum
    return true if n == 1
    return false if !a[n].nil?
    a[n] = 1
  end

  return true
end
