# Postgres Prefill

## Overview
This setup prefills a postgres database with CSV data. 

## How To Use
To load data into the postgres database:
- Place CSV file into `pgdata` directory
- In `sql/create_tables.sql`:
  - Modify the table definitions to fit your CSV data structure.
  - Add your CSV file name to the file path e.g. `FROM /var/lib/postgresql/pgdata/{Your CSV file name here}`
## To start up the docker instance run
```
docker compose up --build
```
## Description of 'create_tables.sql
- `BEGIN TRANSACTION`  denotes the beginning of a transaction / loop,

- `CREATE TABLE` yellow_trips : creates a table into our database, here you define the columns and data types.

- `COPY` <table_name> --: copy the table made 

- `FROM` '<file path>' --: file path for your matching csv file 

- `DELIMITER` ',' CSV HEADER; --: comma seperated, headers kept

- `COMMIT`; --: end of transaction / loop