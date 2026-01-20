-- Negative fares check
SELECT COUNT(*) AS negative_fares
FROM processed.clean_trips
WHERE fare_amount < 0;

-- Null pickup time
SELECT COUNT(*) AS null_pickup_time
FROM processed.clean_trips
WHERE tpep_pickup_datetime IS NULL;
