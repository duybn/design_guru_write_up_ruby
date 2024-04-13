# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruits)
  n = fruits.length
  max = 0
  j = 0
  a = Hash.new

  for i in 0..n-1
    if a.keys.length < 2 || !a[fruits[i]].nil?
      a[fruits[i]] = 0 if a[fruits[i]].nil?
      a[fruits[i]] += 1
      max = [max, i-j+1].max
    else
      while(a[fruits[j]].to_i > 0 && j < i)
        a[fruits[j]] -= 1

        if a[fruits[j]] == 0
          a.delete(fruits[j])
          j += 1
          a[fruits[i]] = 1
          break
        end

        j += 1
      end
    end
  end

  max
end
