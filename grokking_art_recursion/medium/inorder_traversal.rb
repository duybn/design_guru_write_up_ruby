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
# @return {Integer[]}
def inorder_traversal(root)
  @arr = []
  dfs(root)
  @arr
end

def dfs(root)
  return if root.nil?
  dfs(root.left)
  @arr << root.val
  dfs(root.right)
end
