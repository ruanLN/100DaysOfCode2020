# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index { |val, index|
        i = nums.index(target - val)
        if i and i != index
            return [index, i]
        end
        }
end