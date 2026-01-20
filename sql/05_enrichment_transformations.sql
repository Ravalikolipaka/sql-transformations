CREATE TABLE curated.enriched_trips AS
SELECT
    t.*,
    pu.zone AS pickup_zone,
    dz.zone AS dropoff_zone
FROM processed.clean_trips t
LEFT JOIN raw.taxi_zones pu
    ON t.pulocationid = pu.location_id
LEFT JOIN raw.taxi_zones dz
    ON t.dolocationid = dz.location_id;
