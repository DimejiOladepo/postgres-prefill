BEGIN TRANSACTION;

CREATE TABLE yellow_trips (vendor_id int,
pickup_datetime timestamp,
dropoff_datetime timestamp,
passenger_count int,
trip_distance float,
rate_code int,
store_and_fwd_flag char(1),
payment_type int,
fare_amount float,
extra float,
mta_tax float,
tip_amount float,
tolls_amount float,
imp_surcharge float, total_amount float, pickup_location_id int, dropoff_location_id int);

COPY yellow_trips
FROM '/var/lib/postgresql/pgdata/nyc_tlc_yellow_trips.csv'
DELIMITER ',' CSV HEADER;


CREATE TABLE bikes (tripduration int,
starttime TIMESTAMP,
stoptime TIMESTAMP,
start_station_id int,
start_station_name varchar(50),
start_station_latitude float,
start_station_longitude float,
end_station_id int,
end_station_name varchar(50),
end_station_latitude float,
end_station_longitude float,
bikeid int,
usertype varchar,
birth_year int,
gender text
);

COPY bikes
FROM '/var/lib/postgresql/pgdata/city_bikes.csv'
DELIMITER ',' CSV HEADER;


COMMIT;