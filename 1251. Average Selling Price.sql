/*Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.
If a product does not have any sold units, its average selling price is assumed to be 0.*/

SELECT P.product_id, 
IFNULL(ROUND(SUM(P.price*U.units)/SUM(U.Units),2),0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id
AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id
