Today, a fast problem just to recover lose the streak https://leetcode.com/problems/valid-sudoku

Classified as `medium`, but IMO it looks too simple if you are used to the Sudoku rules.
My solution was to create a Set for each row/column/3x3 square and populate those sets with the number I found, if the number is already in the set, return false, if we iterate over all the board without problems, return true.