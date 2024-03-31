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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  @k = k
  @res = nil
  inorder(root)
  @res
end

def inorder(root)
  return if !@res.nil?
  return if root.nil?

  inorder(root.left)
  @k -= 1
  if @k == 0
    @res = root.val
    return
  end
  inorder(root.right)
end
