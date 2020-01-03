# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    if root and root.left and root.right
        [min_depth(root.left), min_depth(root.right)].min + 1
    elsif root and root.left
        min_depth(root.left) + 1
    elsif root and root.right
        min_depth(root.right) + 1
    elsif root
        1
    else
        0
    end
end