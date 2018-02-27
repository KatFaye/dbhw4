/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'customer' (
  'cust_id' int(4) NOT NULL,
  'cust_name' varchar(50) DEFAULT NULL,
  'city' varchar(50) DEFAULT NULL,
  'country' varchar(30) DEFAULT NULL,
  'beg_bal' int(11) DEFAULT NULL,
  'cur_bal' int(11) DEFAULT NULL,
  PRIMARY KEY ('cust_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'manufacturer' (
  'manufactr_id' int(4) NOT NULL,
  'manufactr_name' varchar(50) DEFAULT NULL,
  'city' varchar(30) DEFAULT NULL,
  'country' varchar(30) DEFAULT NULL,
  PRIMARY KEY ('manufactr_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'product' (
  'prod_id' int(5) NOT NULL,
  'prod_desc' varchar(50) DEFAULT NULL,
  'manufactr_id' int(4) DEFAULT NULL,
  'cost' decimal(5,2) DEFAULT NULL,
  'price' decimal(5,2) DEFAULT NULL,
  PRIMARY KEY ('prod_id')
  CONSTRAINT manufactr_id
    FOREIGN KEY (manufactr_id)
    REFERENCES manufacturer(manufactr_id)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'sale' (
  'sale_id' int(3) NOT NULL,
  'date' varchar(6) DEFAULT NULL,
  'cust_id' int(4) DEFAULT NULL,
  'salpers_id' int(3) DEFAULT NULL,
  'prod_id' int(5) DEFAULT NULL,
  'qty' int(3) DEFAULT NULL,
  PRIMARY KEY ('sale_id'),
  CONSTRAINT cust_id
    FOREIGN KEY (cust_id)
    REFERENCES customer(cust_id),
  CONSTRAINT salpers_id
    FOREIGN KEY (salpers_id)
    REFERENCES salesperson(salpers_id),
  CONSTRAINT prod_id
    FOREIGN KEY (prod_id)
    REFERENCES product(prod_id),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE 'salesperson' (
  'salpers_id' int(3) NOT NULL,
  'salpers_name' varchar(50) DEFAULT NULL,
  'manager_id' int(3) DEFAULT NULL,
  'office' varchar(30) DEFAULT NULL,
  'comm' int(3) DEFAULT NULL,
  PRIMARY KEY ('salpers_id'),
  CONSTRAINT manager_id
    FOREIGN KEY (manager_id)
    REFERENCES salesperson(salpers_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
