/*Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players who logged in on the day immediately following their initial login, and divide it by the number of total players.*/
select round(sum(player_login)/ count(distinct player_id),2) 
as fraction
from 
(select player_id ,
datediff(event_date,min(event_date) over(partition by player_id)) = 1 as player_login
from activity) as new_table
