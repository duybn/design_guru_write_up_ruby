# @param {Integer[][]} edges
# @return {Integer[]}
def find_redundant_connection(edges)
  n = edges.length
  @par = (0..n).to_a

  for i in 0..edges.length-1
    x, y = edges[i]

    return [x, y] unless union(x, y)
  end
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

  return false if par_x == par_y

  if par_x > par_y
    @par[par_x] = par_y
  else
    @par[par_y] = par_x
  end

  return true
end
