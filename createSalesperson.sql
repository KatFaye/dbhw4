CREATE TABLE salesperson (
  salpers_id number(3) NOT NULL,
  salpers_name varchar(50) DEFAULT NULL,
  manager_id number(3) DEFAULT NULL,
  office varchar(30) DEFAULT NULL,
  comm number(3) DEFAULT NULL,
  PRIMARY KEY (salpers_id),
  CONSTRAnumber manager_id
    FOREIGN KEY (manager_id)
    REFERENCES salesperson(salpers_id)
);
