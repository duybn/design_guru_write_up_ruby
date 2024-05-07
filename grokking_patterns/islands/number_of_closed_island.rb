# @param {Integer[][]} grid
# @return {Integer}
def closed_island(grid)
  m, n = grid.length, grid[0].length
  visited = Array.new(m){Array.new(n, 0)}
  cnt = 0

  for i in 0..m-1
    for j in 0..n-1
      if grid[i][j] == 0 && visited[i][j] == 0
        queue = [[i, j]]
        visited[i][j] = 1
        flag = true

        while(!queue.empty?)
          l = queue.length

          for _ in 0..l-1
            curr_x, curr_y = queue.shift

            if curr_x == 0 || curr_x == m-1 || curr_y == 0 || curr_y == n-1
              flag = false
            end

            if curr_x < m-1 && grid[curr_x+1][curr_y] == 0 && visited[curr_x+1][curr_y] == 0
              queue.push([curr_x+1, curr_y])
              visited[curr_x+1][curr_y] = 1
            end

            if curr_y < n-1 && grid[curr_x][curr_y+1] == 0 && visited[curr_x][curr_y+1] == 0
              queue.push([curr_x, curr_y+1])
              visited[curr_x][curr_y+1] = 1
            end

            if curr_x > 0 && grid[curr_x-1][curr_y] == 0 && visited[curr_x-1][curr_y] == 0
              queue.push([curr_x-1, curr_y])
              visited[curr_x-1][curr_y] = 1
            end

            if curr_y > 0 && grid[curr_x][curr_y-1] == 0 && visited[curr_x][curr_y-1] == 0
              queue.push([curr_x, curr_y-1])
              visited[curr_x][curr_y-1] = 1
            end
          end
        end

        if flag == true
          cnt += 1
        end
      end
    end
  end

  cnt
end
