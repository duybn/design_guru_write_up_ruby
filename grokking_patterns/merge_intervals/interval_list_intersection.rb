# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
  return [] if first_list.empty? || second_list.empty?

  m, n = first_list.length, second_list.length
  i, j = 0, 0

  res = []

  while(i < m && j < n)
    if first_list[i][1] < second_list[j][0]
      i += 1
    elsif first_list[i][0] > second_list[j][1]
      j += 1
    else
      res << merge_inteval(first_list[i], second_list[j])

      if first_list[i][1] < second_list[j][1]
        i += 1
      else
        j += 1
      end
    end
  end

  while(i < m)
    i += 1

    if i < m && !(first_list[i][1] < second_list[-1][0]) && !(first_list[i][0] > second_list[-1][1])
      res << merge_inteval(first_list[i], second_list[-1])
    end
  end

  while(j < n)
    j += 1

    if j < n && !(first_list[-1][1] < second_list[j][0]) && !(first_list[-1][0] > second_list[j][1])
      res << merge_inteval(first_list[-1], second_list[j])
    end
  end

  res
end

def merge_inteval(interval_1, interval_2)
  left = [interval_1[0], interval_2[0]].max
  right = [interval_1[1], interval_2[1]].min

  return [left, right]
end
