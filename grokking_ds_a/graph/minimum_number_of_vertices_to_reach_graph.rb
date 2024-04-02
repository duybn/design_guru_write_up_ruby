# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_smallest_set_of_vertices(n, edges)
  inbound = Hash.new

  for i in 0..edges.length-1
    _, d = edges[i]
    inbound[d] = 0 if inbound[d].nil?
    inbound[d] += 1
  end

  queue = []

  for i in 0..n-1
    queue << i if inbound[i].to_i == 0
  end

  queue
end
