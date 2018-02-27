CREATE TABLE states (
  st_code varchar(2) NOT NULL,
  reg_code number(1) NOT NULL,
  st_name varchar(20) NOT NULL,
  CONSTRAINT st_code
    PRIMARY KEY (st_code),
  CONSTRAINT reg_code
    FOREIGN KEY (reg_code)
    REFERENCES regions(reg_code)
);
