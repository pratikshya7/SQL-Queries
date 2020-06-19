/* ##QUESTION: 
Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |

##SOLUTION: 
*/
SELECT Salary as SecondHighestSalary From Employee
Where Salary < (SELECT Distinct Salary from Employee Order By Salary Desc Limit 1)
Order By Salary Desc
Limit 1;

