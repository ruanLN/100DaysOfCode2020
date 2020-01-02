# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    total = nums
        .sort
        .each_slice(2)
        .map { |a, *| a }
        .reduce { |sum, n| sum + n }   
    return total
end