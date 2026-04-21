select city, SUM(total_price) AS revenue
from bookings
where status = 'COMPLETED' 
GROUP BY city
having SUM(total_price) > 0;