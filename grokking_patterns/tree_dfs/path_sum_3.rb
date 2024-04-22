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
# @param {Integer} target_sum
# @return {Integer}
def path_sum(root, target_sum)
  @res = 0
  dfs(root, target_sum)
  @res
end

def dfs(root, target_sum)
  return if root.nil?

  check(root, target_sum)
  dfs(root.left, target_sum)
  dfs(root.right, target_sum)
end

def check(root, target_sum)
  return if root.nil?

  if root.val == target_sum
    @res += 1
  end

  check(root.left, target_sum-root.val)
  check(root.right, target_sum-root.val)
end
