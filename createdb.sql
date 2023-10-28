CREATE TABLE sales (
  customer_id INT PRIMARY KEY,
  policy_id VARCHAR(10),
  purchase_id VARCHAR(10)
);

CREATE TABLE policy (
  policy_id VARCHAR(10) PRIMARY KEY,
  start_date DATE,
  policy_type VARCHAR(20),
  active BOOLEAN
);

CREATE TABLE purchase (
  purchase_id VARCHAR(10) PRIMARY KEY, 
  purchase_type VARCHAR(20) 
);

CREATE TABLE customer (
  customer_id INT PRIMARY KEY, 
  location VARCHAR(20),
  age VARCHAR(10),
  registration_date DATE
);

\copy sales FROM 'sales.csv' DELIMITER ',' CSV HEADER;
\copy policy FROM 'policy.csv' DELIMITER ',' CSV HEADER;
\copy purchase FROM 'purchase.csv' DELIMITER ',' CSV HEADER;
\copy customer FROM 'customers.csv' DELIMITER ',' CSV HEADER;
