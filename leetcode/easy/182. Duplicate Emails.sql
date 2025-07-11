/*
Question 182. Duplicate emails
Link: https://leetcode.com/problems/duplicate-emails/description/

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. 
The emails will not contain uppercase letters.
 

Write a solution to report all the duplicate emails. 
Note that it's guaranteed that the email field is not NULL.

Return the result table in any order.
*/

SELECT email 
FROM Person
GROUP BY email
HAVING COUNT(id) > 1;
