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
    if !root
        return 0
    end
    to_verify = [[root, 1]]
    while to_verify.any?
        current, depth = to_verify.shift
        if !current.left and !current.right # is a leaf node
            return depth
        end
        if current.left
            to_verify << [current.left, depth + 1] 
        end
        if current.right
            to_verify << [current.right , depth + 1]
        end
    end
end