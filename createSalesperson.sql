CREATE TABLE salesperson (
  salpers_id int(3) NOT NULL,
  salpers_name varchar(50) DEFAULT NULL,
  manager_id int(3) DEFAULT NULL,
  office varchar(30) DEFAULT NULL,
  comm int(3) DEFAULT NULL,
  PRIMARY KEY ('salpers_id'),
  CONSTRAINT manager_id
    FOREIGN KEY (manager_id)
    REFERENCES salesperson(salpers_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
