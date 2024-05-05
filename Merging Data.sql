CREATE TABLE divvy-trip-2021.Pr_divvy_trips_2021.merged_data AS
SELECT CAST (ride_id AS STRING) AS ride_id,
CAST (rideable_type AS STRING) AS rideable_type,
started_at,
ended_at,
CAST (started_weekday AS STRING) AS started_weekday,
CAST (start_station_name AS STRING) AS start_station_name,
CAST (start_station_id AS STRING) AS start_station_id,
CAST (end_station_name AS STRING) AS end_station_name,
CAST (end_station_id AS STRING) AS end_station_id,
CAST (start_lat AS STRING) AS start_lat,
CAST (start_lng AS STRING) AS start_lng,
CAST (end_lat AS STRING) AS end_lat,
CAST (end_lng AS STRING) AS end_lng,
CAST (member_casual AS STRING) AS member_casual,
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.01`
UNION ALL 
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.02`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.03`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.04`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.05`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.06`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.07`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.08`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.09`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.10`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.11`
UNION ALL
SELECT CAST (ride_id AS STRING),
CAST (rideable_type AS STRING),
started_at,
ended_at,
CAST (started_weekday AS STRING),
CAST (start_station_name AS STRING),
CAST (start_station_id AS STRING),
CAST (end_station_name AS STRING),
CAST (end_station_id AS STRING),
CAST (start_lat AS STRING),
CAST (start_lng AS STRING),
CAST (end_lat AS STRING),
CAST (end_lng AS STRING),
CAST (member_casual AS STRING),
ride_length,
mean_of_ride_length,
max_of_ride_length,
mode_of_ride_length
FROM `divvy-trip-2021.Pr_divvy_trips_2021.12`

---- Merging Data from the 01-11 to 12 by using outer join function

SELECT *
FROM `divvy-trip-2021.Pr_divvy_trips_2021.merged_data_test2` AS merged
FULL OUTER JOIN `divvy-trip-2021.Pr_divvy_trips_2021.12` AS m12 ON merged.ride_id = m12.ride_id
