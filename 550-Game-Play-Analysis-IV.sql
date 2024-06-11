-- Write your PostgreSQL query statement below
WITH first_login as (
    select player_id, min(event_date) as first_date
    from Activity
    GROUP BY player_id
),
consecutive_login as (
  SELECT fl.player_id
    FROM first_login fl
    JOIN Activity a ON fl.player_id = a.player_id
    AND a.event_date = fl.first_date + INTERVAL '1 day'
)

SELECT ROUND(COUNT(DISTINCT cl.player_id) * 1.0 / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM consecutive_login cl;

