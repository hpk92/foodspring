/* Total sum of products per week */

SELECT count(product_id) as TotalSold FROM (
							select product_id, week(Purchase_date) as dates 
                            from foodspring.Sales
                            ) sub
where sub.dates = 34 /* Week number */