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
# @return {Integer}
def min_depth(root)
  res = []
  return 0 if root.nil?

  queue = [root]
  count = 1

  while(!queue.empty?)
    l = queue.length

    for i in 0..l-1
      par = queue.shift
      next if par.nil?
      return count if par.left.nil? && par.right.nil?

      queue.push(par.left) if !par.left.nil?
      queue.push(par.right) if !par.right.nil?
    end

    count += 1
  end

  res
end
