/*Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.*/
SELECT contest_id, 
ROUND(COUNT(DISTINCT user_id)*100/ (SELECT COUNT(user_id) FROM users),2) AS percentage
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC
