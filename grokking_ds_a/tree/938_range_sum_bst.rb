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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  @sum = 0
  inorder(root, low, high)
  @sum
end

def inorder(root, left, right)
  return if root.nil?
  inorder(root.left, left, right)
  @sum += root.val if root.val >= left && root.val <= right
  inorder(root.right, left, right)
end
