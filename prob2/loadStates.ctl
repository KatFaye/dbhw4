load data
INFILE 'regions/statesinfo.csv'
INTO TABLE states
APPEND
FIELDS TERMINATED BY ','
(st_code,
reg_code,
st_name
)
