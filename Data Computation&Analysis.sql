SELECT AVG(ride_len_sec) OVER() AS avg_ride, MAX(ride_len_sec) OVER() AS max_ride, 
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`

  
---Now as we already calculated and filtered out the z-score till ‘3’, we’re calculating the new correct Average and Max after removing the outliers.

  
SELECT started_weekday,
COUNT(*) AS weekday_count
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
GROUP BY started_weekday
ORDER BY weekday_count DESC

  
---Counted the most occurred frequency of weekday

  
SELECT month,
COUNT(*) AS month_count
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
GROUP BY month
ORDER BY month_count DESC

  
---Counted the most occurred frequency of month

  
SELECT ride_len_sec, COUNT(*) AS peak_hour_count
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1` 
GROUP BY ride_len_sec
ORDER BY peak_hour_count DESC
LIMIT 5

  
---Here we can see top 5 peak hours having most traffic in this time and been differentiated by member_casual

  
SELECT started_weekday, 
AVG (CASE WHEN member_casual = 'member' THEN ride_len_sec END) AS avg_weekday_member_ride_length,
AVG (CASE WHEN member_casual = 'casual' THEN ride_len_sec END) AS avg_weekday_casual_ride_length, 
COUNT (CASE WHEN member_casual = 'member' THEN ride_len_sec END) AS count_member,
COUNT (CASE WHEN member_casual = 'casual' THEN ride_len_sec END) AS count_casual
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
GROUP BY started_weekday

  
---For every weekday we’re getting the average and count of members and casual riders separately.

  
SELECT month, 
AVG (CASE WHEN member_casual = 'member' THEN ride_len_sec END) AS avg_weekday_member_ride_length,
AVG (CASE WHEN member_casual = 'casual' THEN ride_len_sec END) AS avg_weekday_casual_ride_length, 
COUNT (CASE WHEN member_casual = 'member' THEN ride_len_sec END) AS count_member,
COUNT (CASE WHEN member_casual = 'casual' THEN ride_len_sec END) AS count_casual
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
GROUP BY month

  
---For every month we’re getting the average and count of members and casual riders separately.

  
SELECT member_casual, 
AVG (CASE WHEN member_casual = "member" THEN ride_len_sec END) AS avg_member,
AVG (CASE WHEN member_casual = "casual" THEN ride_len_sec END) AS avg_casual,
MAX (CASE WHEN member_casual = "member" THEN ride_len_sec END) AS max_member,
MAX (CASE WHEN member_casual = "casual" THEN ride_len_sec END) AS max_casual,
MIN (CASE WHEN member_casual = "member" THEN ride_len_sec END) AS min_member,
MIN (CASE WHEN member_casual = "casual" THEN ride_len_sec END) AS min_casual
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
GROUP BY member_casual

  
---This gives total Average, Max and Min Separated between members and casual riders.

  
SELECT ride_id, len_ride
FROM (SELECT ride_id, LENGTH(ride_id) AS len_ride FROM`divvy-trip-2021.Pr_divvy_trips_2021.merged_data5`)
WHERE len_ride <= 16

  
---For verification of the “ride_id” I’ve checked the length of every row to check the consistency.


WITH filtered_data AS (
  SELECT
    member_casual,
    TRIM(end_station_name) AS end_station_name
  FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
  WHERE TRIM(end_station_name) <> "NA"
)
-- Casual End Station Counts
SELECT
  end_station_name AS cas_st,
  SUM(CASE WHEN member_casual = "casual" THEN 1 ELSE 0 END) AS casual_station
FROM filtered_data
GROUP BY cas_st
ORDER BY casual_station DESC
LIMIT 5

-- Member End Station Counts
SELECT
  end_station_name AS mem_st,
  SUM(CASE WHEN member_casual = "member" THEN 1 ELSE 0 END) AS member_station
FROM filtered_data
GROUP BY mem_st
ORDER BY member_station DESC
LIMIT 5;

LIMIT 5

  
---Here we can see the Top 5 Peak “end_station_name” excluding “NA” Separated by member and casual. Same logic will be followed with “start_station_name”.

  
WITH filtered_data AS (
  SELECT
    member_casual,
    TRIM(end_station_name) AS end_station_nm, TRIM(start_station_name) AS start_station_nm
  FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
  WHERE TRIM(end_station_name) <> "NA"
)
-- member Station Counts
SELECT
  CONCAT(start_station_nm,"---",end_station_nm) AS station_names,
  SUM(CASE WHEN member_casual = "member" THEN 1 ELSE 0 END) AS member_station
FROM filtered_data
GROUP BY station_names
ORDER BY member_station DESC
LIMIT 5;

WITH filtered_data AS (
  SELECT
    member_casual,
    TRIM(end_station_name) AS end_station_nm, TRIM(start_station_name) AS start_station_nm
  FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
  WHERE TRIM(end_station_name) <> "NA"
)
-- casual Station Counts
SELECT
  CONCAT(start_station_nm,"---",end_station_nm) AS station_names,
  SUM(CASE WHEN member_casual = "casual" THEN 1 ELSE 0 END) AS casual_station
FROM filtered_data
GROUP BY station_names
ORDER BY casual_station DESC
LIMIT 5;


---Combined the Start_station_name and end_station_name to seek the most frequently starting and end destination of different riders.

