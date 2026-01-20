CREATE TABLE processed.clean_trips AS
WITH base_trips AS (
    SELECT *
    FROM raw.yellow_trips
),
valid_trips AS (
    SELECT *
    FROM base_trips
    WHERE fare_amount > 0
      AND total_amount > 0
      AND tpep_dropoff_datetime > tpep_pickup_datetime
)
SELECT
    *,
    EXTRACT(EPOCH FROM (tpep_dropoff_datetime - tpep_pickup_datetime))/60
        AS trip_duration_minutes
FROM valid_trips;
