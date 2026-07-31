SELECT Visits.customer_id, COUNT(*) AS count_no_trans FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
WHERE amount IS NULL
GROUP BY Visits.customer_id;
