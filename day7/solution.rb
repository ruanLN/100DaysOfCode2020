# solution to the https://leetcode.com/problems/sort-array-by-parity/ problem

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
    x = 0
    return a.sort_by { |n| n % 2 }
end