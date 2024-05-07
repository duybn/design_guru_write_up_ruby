# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_min_height_trees(n, edges)
  adj = Array.new(n){Set.new}

  for i in 0..edges.length-1
    x, y = edges[i]

    adj[x] << y
    adj[y] << x
  end

  leaves = []

  for i in 0..n-1
    leaves << i if adj[i].length <= 1
  end

  while(n > 2)
    n -= leaves.length
    curr_leaves = []

    leaves.each do |leaf|
      j = adj[leaf].first
      adj[leaf].delete(j)
      adj[j].delete(leaf)

      curr_leaves << j if adj[j].length == 1
    end

    leaves = curr_leaves
  end

  leaves
end
