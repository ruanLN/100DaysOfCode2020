Today, remembered a bit o SQL in LeetCode https://leetcode.com/problems/department-highest-salary;

Classified as `medium`, it was a bit tricky in the beggining as I didn't use SQL for a while.
First I've tried to solve using group by + max, then I noticed that it will fail with duplicated maximum salaries. After that I modified the query to have a subquery which returns all salaries in the employee department.