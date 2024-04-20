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
# @return {Integer[][]}
def path_sum(root, target_sum)
  @res = []
  dfs(root, [], target_sum)
  @res
end

def dfs(root, path, target_sum)
  return if root.nil?


  if root.left.nil? && root.right.nil? && target_sum == root.val
    @res.push(path << root.val)
    return
  end

  curr = path.dup
  dfs(root.left, path << root.val, target_sum - root.val)
  dfs(root.right, curr << root.val, target_sum - root.val)
end
