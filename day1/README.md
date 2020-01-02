During day 1 I'll resolve a LeetCode problem https://leetcode.com/problems/array-partition-i/, it was chosen at random by LeetCode


## Thoughts:
It is classified as `easy`, took some time to check how to maximize the asked sum, but in the end, it just need to group the numbers in order, so you guarantee that you're not "wasting" a big number with a very small one.
My first solution was simple and procedural (sort the elements, iterate over them 2 by 2 summing the total), after that I decided to try a more Functional way, in the end, I get a stream one-liner that nailed it.