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
def get_minimum_difference(root)
  @res = []
  @min = 10**5
  inorder(root)
  @min
end

def inorder(root)
  return if root.nil?

  inorder(root.left)
  @res << root.val
  if @res.length >= 2
    @min = [@min, @res[-1] - @res[-2]].min
  end
  inorder(root.right)
end
