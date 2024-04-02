# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  n = is_connected[0].length
  res = 0
  visited = Hash.new

  for i in 0..n-1
    if visited[i].nil?
      res += 1
      queue = [i]
      visited[i] = 1

      while(!queue.empty?)
        l = queue.length

        for k in 0..l-1
          cur_v = queue.shift

          for j in 0..n-1
            if visited[j].nil? && is_connected[cur_v][j] == 1 && cur_v != j
              queue << j
              visited[j] = 1
            end
          end
        end
      end
    end
  end

  res
end
