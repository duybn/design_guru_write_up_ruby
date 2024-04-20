# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
  return [] if root.nil?

  res = []
  queue = [root]
  rev = false

  while(!queue.empty?)
    l = queue.length
    curr = []

    for i in 0..l-1
      par = queue.shift
      next if par.nil?
      curr.push(par.val)
      queue.push(par.left) if !par.left.nil?
      queue.push(par.right) if !par.right.nil?
    end

    if rev
      res << curr.reverse
    else
      res << curr
    end

    rev = !rev
  end

  res
end
