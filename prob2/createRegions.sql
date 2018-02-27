CREATE TABLE regions (
  reg_code number(1) NOT NULL,
  reg_name varchar(50) NOT NULL,
  CONSTRAINT reg_code
    PRIMARY KEY (reg_code)
);
