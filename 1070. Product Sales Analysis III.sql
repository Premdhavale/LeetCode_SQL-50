/*Write a solution to find all sales that occurred in the first year each product was sold.

For each product_id, identify the earliest year it appears in the Sales table.

Return all sales entries for that product in that year.

Return a table with the following columns: product_id, first_year, quantity, and price.
Return the result in any order.*/
select  
product_id,
year as first_year, quantity, price
from sales 
where ((product_id, year) in (select product_id, min(year) from sales group by product_id))
