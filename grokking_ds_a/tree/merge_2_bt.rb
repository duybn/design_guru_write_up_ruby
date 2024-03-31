# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  if root1.nil? || root2.nil?
    return root2 if root1.nil?
    return root1
  end

  root1.val += root2.val
  root1.left = merge_trees(root1.left, root2.left)
  root1.right = merge_trees(root1.right, root2.right)

  return root1
end
