CREATE TABLE sale (
  sale_id number(3) NOT NULL,
  sdate varchar(6) DEFAULT NULL,
  cust_id number(4) DEFAULT NULL,
  salpers_id number(3) DEFAULT NULL,
  prod_id number(5) DEFAULT NULL,
  qty number(3) DEFAULT NULL,
  PRIMARY KEY (sale_id),
  CONSTRAINT cust_id
    FOREIGN KEY (cust_id)
    REFERENCES customer(cust_id),
  CONSTRAINT salpers_id
    FOREIGN KEY (salpers_id)
    REFERENCES salesperson(salpers_id),
  CONSTRAINT prod_id
    FOREIGN KEY (prod_id)
    REFERENCES product(prod_id)
);
