# Solution to https://leetcode.com/problems/repeated-dna-sequences/

# my solution consists in creating a set of substring that already occured, and another set where 
# we add strings when they already exists in the first set

require 'set'
# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
    first_time = Set.new
    second_time = Set.new
    for loop_index in 0..s.size - 10 do
        not_present = first_time.add?(s[loop_index, 10]) #returns null if the string if already there
        unless not_present
            second_time.add(s[loop_index, 10])
        end
    end
    return second_time.to_a
end