CREATE TABLE product (
  prod_id number(5) NOT NULL,
  prod_desc varchar(50) DEFAULT NULL,
  manufactr_id number(4) DEFAULT NULL,
  cost decimal(5,2) DEFAULT NULL,
  price decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (prod_id),
  CONSTRAINT manufactr_id
    FOREIGN KEY (manufactr_id)
    REFERENCES manufacturer(manufactr_id)
);
