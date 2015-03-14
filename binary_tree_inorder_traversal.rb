require_relative "binarytree"

# @param {TreeNode} root
# @return {Integer[]}

def inorder_traversal(root)
  vals = Array.new
  parents = Array.new
  cur = root
  while !parents.empty? || cur != nil
    if cur != nil
      parents.push(cur)
      cur = cur.left
    else
      cur = parents.pop
      vals.push(cur.val)
      puts cur.val
      cur = cur.right
    end
  end
  return vals
end

a = TreeNode.new(1)
b = TreeNode.new(2)
c = TreeNode.new(3)
d = TreeNode.new(4)

a.left = b
a.right = c
c.right = d

all_vals = inorder_traversal(a)
all_vals.each {|x| print x }
