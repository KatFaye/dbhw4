load data
INFILE 'product.csv'
INTO TABLE product
APPEND
FIELDS TERMINATED BY ','
(prod_id,
  prod_desc,
  manufactr_id,
  cost,
  price
)
