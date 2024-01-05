/* Write your T-SQL query statement below */
select date_id, make_name, 
count(DISTINCT lead_id) as unique_leads, count(DISTINCT partner_id) as unique_partners
from dailysales
group by date_id, make_name
order by date_id, make_name