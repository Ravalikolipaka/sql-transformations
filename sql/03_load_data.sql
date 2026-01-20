
CREATE TABLE raw.yellow_trips (
    vendorid NUMERIC,
    tpep_pickup_datetime TIMESTAMP,
    tpep_dropoff_datetime TIMESTAMP,
    passenger_count NUMERIC,
    trip_distance NUMERIC,
    ratecodeid NUMERIC,
    store_and_fwd_flag TEXT,
    pulocationid NUMERIC,
    dolocationid NUMERIC,
    payment_type NUMERIC,
    fare_amount NUMERIC,
    extra NUMERIC,
    mta_tax NUMERIC,
    tip_amount NUMERIC,
    tolls_amount NUMERIC,
    improvement_surcharge NUMERIC,
    total_amount NUMERIC,
    congestion_surcharge NUMERIC,
    airport_fee NUMERIC,
    cbd_congestion_fee NUMERIC
);

SELECT COUNT(*) FROM raw.yellow_trips;

SELECT *
FROM raw.yellow_trips
LIMIT 5;
