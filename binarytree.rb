require "ruby-graphviz"
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

# @param {TreeNode} root
# @return void
def drawTree(root)
  if root == nil
    puts "Empty tree"
    return 
  end
  g = GraphViz::new(:G, :type => :digraph)
  # Level order traversal
  parents = Queue.new
  parents.push(root)
  while !parents.empty?
    cur = parents.pop
    pnode = g.add_nodes(cur.val.to_s)
    if cur.left != nil
      parents.push(cur.left)
      # add an edge from pnode to left
      leftchild = g.add_nodes(cur.left.val.to_s)
      g.add_edges(pnode, leftchild)
    end
    if cur.right != nil
      parents.push(cur.right)
      rightchild = g.add_nodes(cur.right.val.to_s)
      g.add_edges(pnode, rightchild)
    end
  end
  g.output(:png => "#{$0}.png")
end

