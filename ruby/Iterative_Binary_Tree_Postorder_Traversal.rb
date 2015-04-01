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
def postorder_traversal(root)
    node_stack = []
    list = []
    if root == nil
        return list
    end
    node_stack << root
    while (tmp = node_stack.last) != nil
        if tmp.left == nil && tmp.right == nil
            list << tmp.val
            node_stack.pop
            next
        end
        if tmp.right != nil
            node_stack << tmp.right
            tmp.right = nil
        end
        if tmp.left != nil
            node_stack << tmp.left
            tmp.left = nil
        end
    end
    list
end

root = TreeNode.new(0)
root.left = TreeNode.new(1)
root.right = TreeNode.new(2)
root.left.right = TreeNode.new(3)
# root = TreeNode.new(nil) 
puts postorder_traversal(root)
