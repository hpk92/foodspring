
/*
First purchase for each customer from the table sales
*/

select s.trans, s.customer_id , s.product_id, s.Purchase_date as first_occurrence
from foodspring.Sales s
INNER JOIN
(
    select customer_id, MIN(Purchase_date) As Purchase_date
    from foodspring.Sales 
    group by customer_id
) occurance
on s.customer_id = occurance.customer_id and occurance.Purchase_date=s.Purchase_date