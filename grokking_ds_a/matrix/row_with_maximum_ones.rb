# @param {Integer[][]} mat
# @return {Integer[]}
def row_and_maximum_ones(mat)
  m, n = mat.length, mat[0].length
  max = 0
  max_idx = 0

  for i in 0..m-1
    curr = 0
    for j in 0..n-1
      curr += 1 if mat[i][j] == 1
    end

    if curr > max
      max = curr
      max_idx = i
    end
  end

  [max_idx, max]
end
