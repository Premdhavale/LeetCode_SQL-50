/*If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.*/


SELECT 
ROUND(SUM(IF(min_order_date = min_customer_pref_delivery_date,1,0)*100)/ COUNT(min_order_date),2) AS immediate_percentage
FROM 
(SELECT delivery_id,
customer_id,
MIN(order_date) AS min_order_date,
MIN(customer_pref_delivery_date) AS min_customer_pref_delivery_date
FROM delivery
GROUP BY customer_id) AS new_table
