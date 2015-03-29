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
def preorder(root, list)
    if root.val == nil
        return list
    end
    list << root.val
    if root.left != nil
        preorder(root.left, list)
    end
    if root.right != nil
        preorder(root.right, list)
    end
    list
end

def preorder_traversal(root)
    list = []
    preorder(root, list)
    list
end

# root = TreeNode.new(0)
# root.left = TreeNode.new(1)
# root.right = TreeNode.new(2)
# root.left.right = TreeNode.new(3)
root = TreeNode.new(nil) 
puts preorder_traversal(root)
