load data
INFILE 'salesperson.csv'
INTO TABLE salesperson
APPEND
FIELDS TERMINATED BY ','
(salpers_id,
 salpers_name,
 manager_id,
 office,
 comm
 )
