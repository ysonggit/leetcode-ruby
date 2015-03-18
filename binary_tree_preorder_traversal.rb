require_relative "binarytree"
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    vals = Array.new
    if root == nil 
        return vals
    end 
    parents = Array.new
    cur = root
    while !parents.empty? || cur != nil
        if cur != nil
            vals.push(cur.val)
            if cur.right != nil
                parents.push(cur.right)
            end
            cur = cur.left
        else
            cur = parents.pop
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
b.left = d

vals = preorder_traversal(a)
vals.each do |v|
  print v, " "
end
