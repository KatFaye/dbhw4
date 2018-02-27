load data
INFILE 'manufacturer.csv'
INTO TABLE manufacturer
APPEND
FIELDS TERMINATED BY ','
(manufactr_id,
 manufactr_name,
 city,
 country
)
