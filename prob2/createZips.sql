CREATE TABLE zips (
  zipcode number(5) NOT NULL,
  state_abbrv varchar(2) NOT NULL,
  city_name varchar(50) NOT NULL,
  CONSTRAINT pk
    PRIMARY KEY (zipcode, state_abbrv),
  CONSTRAINT state_abbrv
    FOREIGN KEY state_abbrv
    REFERENCES states(st_code)
);
