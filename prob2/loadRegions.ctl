load data
INFILE 'regions/regions.csv'
INTO TABLE regions
APPEND
FIELDS TERMINATED BY ','
(reg_code,
reg_name
)
