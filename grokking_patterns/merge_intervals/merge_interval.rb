# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  n = intervals.length
  intervals = intervals.sort_by{|x| [x[0], x[1]]}
  res = []
  previous = intervals[0][1]
  start = intervals[0][0]

  for i in 1..n-1
    if intervals[i][0] > previous
      res << [start, previous]
      start = intervals[i][0]
      previous = intervals[i][1]
    else
      previous = [intervals[i][1], previous].max
    end
  end

  res << [start, previous]

  res
end
