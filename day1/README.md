During day 1 I'll resolve a LeetCode problem https://leetcode.com/problems/array-partition-i/, it was chosen at random by LeetCode.
After that, I ended doing one more problem from a past contest https://leetcode.com/contest/weekly-contest-169/problems/find-n-unique-integers-sum-up-to-zero/


## Thoughts:
It is classified as `easy`, took some time to check how to maximize the asked sum, but in the end, it just need to group the numbers in order, so you guarantee that you're not "wasting" a big number with a very small one.
My first solution was simple and procedural (sort the elements, iterate over them 2 by 2 summing the total), after that I decided to try a more Functional way, in the end, I get a stream one-liner that nailed it.

Problem 2: with the little restriction in the numbers we can use, the solution was just to add 2 elements that are inverses until we reach the desired count (or get just one number left), them, if the desired count in odd, we add 0 to the array and return it.