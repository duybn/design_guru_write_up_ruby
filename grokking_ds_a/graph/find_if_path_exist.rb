# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} source
# @param {Integer} destination
# @return {Boolean}
def valid_path(n, edges, source, destination)
  return true if source == destination

  a = Hash.new

  for i in 0..edges.length-1
    v1, v2 = edges[i]
    a[v1] = [] if a[v1].nil?
    a[v1] << v2
    a[v2] = [] if a[v2].nil?
    a[v2] << v1
  end

  queue = [source]
  visited = Hash.new
  visited[source] = 1

  while(!queue.empty?)
    l = queue.length

    for i in 0..l-1
      current_v = queue.shift
      adj = a[current_v]

      next if adj.nil?

      for j in 0..adj.length-1
        return true if adj[j] == destination
        queue << adj[j] if visited[adj[j]].nil?
        visited[adj[j]] = 1
      end
    end
  end

  false
end
