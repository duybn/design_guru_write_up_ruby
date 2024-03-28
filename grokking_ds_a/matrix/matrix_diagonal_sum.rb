# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  n = mat.length
  sum = 0

  for i in 0..n-1
    sum += mat[i][i]
    sum += mat[i][n-1-i] if i != n-1-i
  end

  sum
end
