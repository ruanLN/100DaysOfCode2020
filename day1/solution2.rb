# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    arr = []
    for i in 1..n/2
        arr << i  << -i
    end
    if n.odd?
        arr << 0
    end
    return arr
end