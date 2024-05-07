# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  visited = Array.new(num_courses, 0)
  inc = Array.new(num_courses, 0)
  adj = Hash.new

  for i in 0..prerequisites.length-1
    x, y = prerequisites[i]
    inc[x] += 1

    adj[y] = [] if adj[y].nil?
    adj[y] << x
  end

  queue = []

  for i in 0..num_courses-1
    if inc[i] == 0
      queue << i
      visited[i] = 1
    end
  end

  while(!queue.empty?)
    l = queue.length

    for i in 0..l-1
      curr = queue.shift

      next if adj[curr].nil?

      adj[curr].each do |v|
        inc[v] -= 1
      end
    end

    for i in 0..num_courses-1
      if inc[i] <= 0 && visited[i] == 0
        visited[i] = 1
        queue << i
      end
    end
  end

  visited.sum >= num_courses
end
