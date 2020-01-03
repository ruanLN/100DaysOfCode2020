During day 2 I'll resolve a LeetCode problem https://leetcode.com/problems/minimum-depth-of-binary-tree, it was chosen at random by LeetCode.


## Thoughts:
It is classified as `easy`, I decided to resolve it using recursion to count the depth. If I'm currently verifying a lead node, return 1 to be added to the total height, it it isn't, return 1 plus the height of the children nodes (with some rules to decide what node to verify here). Rephrasing, the ideia is to perform a BFS counting the traversed layers until a leaf node be found. Besides thinking it like a BFS, the recursive implementation behave as a DFS and traverse all tree nodes. 

I also added a iterative solution, less elegant, but runned a bit faster in LeetCode
