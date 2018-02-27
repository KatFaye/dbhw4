CREATE TABLE customer (
  cust_id number(4) NOT NULL,
  cust_name varchar(50) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  country varchar(30) DEFAULT NULL,
  beg_bal number(11) DEFAULT NULL,
  cur_bal number(11) DEFAULT NULL,
  PRIMARY KEY ('cust_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
