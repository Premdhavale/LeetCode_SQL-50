SELECT E.name, B.bonus FROM Employee E
LEFT JOIN bonus B
ON E.empid = B.empid
WHERE B.bonus < 1000
OR bonus IS NULL;
