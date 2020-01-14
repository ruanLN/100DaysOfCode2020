# Solution to https://leetcode.com/problems/sudoku-solver

# it solves a given board by 'depth', in other words, when it found a non-filled space,
# it will choose the first available number to fill, and try to complete the rest of the board
# if it fails, it tries with the next number, until a solution is found

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board) 
    rowbuckets, colbuckets, boxbuckets = _get_buckets(board)
    _solve_sudoku_(board, 0, rowbuckets, colbuckets, boxbuckets); nil
end

private def _get_buckets(board)
    rowbuckets = Array.new(9) { Hash.new }
    colbuckets = Array.new(9) { Hash.new }
    boxbuckets = Array.new(9) { Hash.new }

    0.upto(81 - 1) do |num|
        i, j = num.divmod(9)
        next if board[i][j] == '.'

        k = _get_box(i,j)
        char = board[i][j]
        rowbuckets[i][char] = true
        colbuckets[j][char] = true
        boxbuckets[k][char] = true
    end
    return rowbuckets, colbuckets, boxbuckets
end


private def _get_box(i, j)
    return (i / 3) * 3 + (j / 3)
end

private def _solve_sudoku_(board, num, rowbuckets, colbuckets, boxbuckets)
    while true
        i, j = num.divmod(9)
        if board[i][j] == '.'
            k = _get_box(i, j)
            r, c, b = rowbuckets[i], colbuckets[j], boxbuckets[k]
            break
        end

        num += 1
        return true if num == 81
    end

    '1'.upto('9').each do |n|
        next if r[n] || c[n] || b[n]

        board[i][j] = n
        r[n] = c[n] = b[n] = true

        ok = _solve_sudoku_(board, num, rowbuckets, colbuckets, boxbuckets)
        return true if ok

        r[n] = c[n] = b[n] = false
        board[i][j] = '.'
    end

    return false
end

require 'set'
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    rows = Array.new(9) { |index| Set.new [] }
    columns = Array.new(9) { |index| Set.new [] }
    quadrants = Array.new(9) { |index| Set.new [] }
    board.each_with_index { |row, rindex| 
        row.each_with_index { |column, cindex| 
            unless column == "."
                unless columns[cindex].add?(column) && rows[rindex].add?(column) && quadrants[cindex / 3 + (rindex / 3) * 3].add?(column) 
                    return false
                end
            end
            }
        }
    return true
end