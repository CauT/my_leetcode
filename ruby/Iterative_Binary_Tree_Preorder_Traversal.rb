# Definition for a binary tree node
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    node_stack = []
    list = []
    if root == nil
        return list
    end
    node_stack << root
    while (tmp_node = node_stack.pop) != nil
        list << tmp_node.val
        if tmp_node.right != nil
            node_stack << tmp_node.right
        end
        if tmp_node.left != nil
            node_stack << tmp_node.left
        end
    end
    list
end

root = TreeNode.new(0)
root.left = TreeNode.new(1)
root.right = TreeNode.new(2)
root.left.right = TreeNode.new(3)
# root = TreeNode.new(nil) 
puts preorder_traversal(root)
