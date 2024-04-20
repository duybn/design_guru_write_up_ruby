# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
  return root if root.nil?

  queue = [root]

  while(!queue.empty?)
    l = queue.length
    curr = []

    for i in 0..l-1
      par = queue.shift
      next if par.nil?
      curr.push(par)
      queue.push(par.left) if !par.left.nil?
      queue.push(par.right) if !par.right.nil?
    end

    for i in 0..curr.length-2
      curr[i].next = curr[i+1]
    end

    curr[-1].next = nil
  end

  root
end
