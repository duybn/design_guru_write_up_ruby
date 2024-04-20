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
# @return {Float[]}
def average_of_levels(root)
  res = []
  return res if root.nil?

  queue = [root]

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

    res << curr.sum.to_f/curr.length
  end

  res
end
