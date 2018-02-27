load data
INFILE 'regions/allzips.csv'
INTO TABLE zips
APPEND
FIELDS TERMINATED BY ','
(zipcode,
state_abbrv,
city_name
)
