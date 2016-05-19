-- create function
create extension refint;
create extension edb_foreignkeyconstraintmanager;

-- create tables

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS sales_np;
DROP TABLE IF EXISTS sales2;
DROP TABLE IF EXISTS sales2_np;


CREATE TABLE sales
(
  order_no    number PRIMARY KEY,
  dept_no     number,
  part_no     varchar2,
  country     varchar2(20),
  date        date,
  amount      number
)
PARTITION BY LIST(country)
(
  PARTITION europe VALUES('FRANCE', 'ITALY'),
  PARTITION asia VALUES('INDIA', 'PAKISTAN'),
  PARTITION americas VALUES('US', 'CANADA')
);

CREATE TABLE sales2
(
  order_no    number PRIMARY KEY,
  dept_no     number,
  part_no     varchar2,
  country     varchar2(20),
  date        date,
  amount      number
)
PARTITION BY LIST(country)
(
  PARTITION europe VALUES('FRANCE', 'ITALY'),
  PARTITION asia VALUES('INDIA', 'PAKISTAN'),
  PARTITION americas VALUES('US', 'CANADA')
);


CREATE TABLE sales_np
(
  order_no    number PRIMARY KEY,
  dept_no     number,
  part_no     varchar2,
  country     varchar2(20),
  date        date,
  amount      number
);

CREATE TABLE sales2_np
(
  order_no    number PRIMARY KEY,
  dept_no     number,
  part_no     varchar2,
  country     varchar2(20),
  date        date,
  amount      number
);
