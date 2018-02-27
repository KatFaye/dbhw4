load data
INFILE 'salesperson.csv'
INTO TABLE salesperson
APPEND
FIELDS TERMINATED BY ','
(salpers_id,
 salepers_name,
 manager_id,
 office,
 comm
 )
