/*
Question 181. Employees Earning More Than Their Managers
Link: 
https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, 
their name, salary, and the ID of their manager.
 

Write a solution to find the employees who earn more 
than their managers.

Return the result table in any order.
*/

SELECT t1.name AS Employee
FROM Employee AS t1
LEFT JOIN 
    Employee AS t2
    ON t1.managerId = t2.id
WHERE t1.salary > t2.salary
