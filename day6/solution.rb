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