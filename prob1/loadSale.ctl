load data
INFILE 'sale.csv'
INTO TABLE sale
APPEND
FIELDS TERMINATED BY ','
(sale_id,
 sdate,
 cust_id,
 salpers_id,
 prod_id,
 qty
)
