CREATE TABLE `customer` (
  `cust_id` int(4) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `beg_bal` int(11) DEFAULT NULL,
  `cur_bal` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
