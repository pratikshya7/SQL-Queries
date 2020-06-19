/*
###Question:
Write a SQL query to get the nth highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+

###SOLUTION
*/
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
Declare Y INT;
SET Y = N-1;
  RETURN (
      SELECT Distinct Salary as NthHighestSalary From Employee
      Order By Salary DESC
      Limit 1 Offset Y     
  );
END
