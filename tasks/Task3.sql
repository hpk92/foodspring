/*
 Return a pivot table of client name v/s cumulative purchase amount
*/

select 
result.clientName, 
sum(result.wp) as 'Whey Protein',  
sum(result.ss) as 'Shape Shake',
sum(result.gb) as 'Goji Beeren',
sum(result.pb) as 'Protein Bar'
from
(
    SELECT
    pivot.Client_Name as clientName,
    CASE WHEN pivot.product_name='Whey Protein' THEN pivot.amount ELSE 0 END as wp,
    CASE WHEN pivot.product_name='Shape Shake' THEN pivot.amount ELSE 0 END as ss,
    CASE WHEN pivot.product_name='Goji Beeren' THEN pivot.amount ELSE 0 END as gb,
    CASE WHEN pivot.product_name='Protein Bar' THEN pivot.amount ELSE 0 END as pb
    from
        (
        SELECT c.Client_Name as Client_Name ,p.product as product_name, pur.amount as amount 
	FROM foodspring.product as p, foodspring.client as c,
        (
            SELECT sum(purc.amount) as amount,purc.ClientId as ClientId, purc.ProductId as ProductId 
            FROM foodspring.purchase as purc
            group by ProductId, ClientId
        ) pur
        where
          pur.ProductId = p.ID  and pur.ClientId =c.ID 
        order by Client_Name
        ) pivot
) result
group by clientName


