-- Write a solution to find managers with at least five direct reports.

-- Return the result table in any order.

-- The result format is in the following example.



-- Example 1:

-- Input:
-- Employee table:
-- +-----+-------+------------+-----------+
-- | id  | name  | department | managerId |
-- +-----+-------+------------+-----------+
-- | 101 | John  | A          | null      |
-- | 102 | Dan   | A          | 101       |
-- | 103 | James | A          | 101       |
-- | 104 | Amy   | A          | 101       |
-- | 105 | Anne  | A          | 101       |
-- | 106 | Ron   | B          | 101       |
-- +-----+-------+------------+-----------+
-- Output:
-- +------+
-- | name |
-- +------+
-- | John |
-- +------+
# Write your MySQL query statement below
SELECT e1.name AS name
FROM Employee e1
JOIN Employee e2 ON e1.id = e2.managerId
GROUP BY e1.name
HAVING COUNT(e1.id>=5);
