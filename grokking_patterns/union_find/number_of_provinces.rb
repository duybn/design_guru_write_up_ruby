# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  n = is_connected.length
  @par = (0..n).to_a

  for i in 0..n-1
    for j in 0..n-1
      union(i+1, j+1) if is_connected[i][j] == 1
    end
  end

  visited = Hash.new
  cnt = 0

  for i in 1..n
    curr_par = find(i)

    if visited[curr_par].nil?
      cnt += 1
      visited[curr_par] = 1
    end
  end

  cnt
end

def find(x)
  return x if x == @par[x]

  res = find(@par[x])
  @par[x] = res

  return res
end

def union(x, y)
  par_x = find(x)
  par_y = find(y)

  return if par_x == par_y

  if par_x > par_y
    @par[par_x] = par_y
  else
    @par[par_y] = par_x
  end
end
