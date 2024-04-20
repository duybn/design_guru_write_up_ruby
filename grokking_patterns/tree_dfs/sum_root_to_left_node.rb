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
def sum_numbers(root)
  @sum = 0
  dfs(root, '')
  @sum
end

def dfs(root, path)
  return if root.nil?

  if root.left.nil? && root.right.nil?
    path += root.val.to_s
    @sum += path.to_i
    return
  end

  dfs(root.left, path + root.val.to_s)
  dfs(root.right, path + root.val.to_s)
end
