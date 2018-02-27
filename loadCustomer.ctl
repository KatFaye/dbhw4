load data
INFILE 'customer.csv'
INTO TABLE customer
APPEND
FIELDS TERMINATED BY ','
(cust_id,
 cust_name,
 city,
 country,
 beg_bal,
 cur_bal
)
