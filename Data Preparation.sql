SELECT *,
ended_at - started_at AS ride_length2
FROM `divvy-trip-2021.Pr_divvy_trips_2021.merged_data`

---Dataset Contains ride_length col. Which is created by difference between ended_at and started_at col. 
--But when it exported into BigQuery it’s values changed along with Data type that appears as string so to solve this problem, 
--I’ve created another col. Name ride_length2 having data cal. In Sql by running query

SELECT *,
FROM (
  SELECT * , DATETIME_DIFF(ended_at,started_at,HOUR) AS ride_len_hour, 
  DATETIME_DIFF(ended_at,started_at,MINUTE) AS ride_len_minute, 
  DATETIME_DIFF(ended_at,started_at,SECOND) AS ride_len_sec,
  FROM`divvy-trip-2021.Pr_divvy_trips_2021.merged_data2`)
WHERE ride_len_sec >=60 AND ride_len_minute <=1440 
AND start_station_name !='NA' AND start_station_id != 'NA' 
AND end_station_name != 'NA' AND end_station_id != 'NA' 
AND start_lat != 'NA' AND start_lng != 'NA' 
AND end_lat != 'NA' AND end_lng != 'NA'

---Here are we creating a new table again “merged1” because the ride_length_2 is an Interval Datatype and to Execute AVG function or for other analysis purpose 
--I need Numeric/Integer or Float64 Datatype for that and DATETIME_DIFF function provides that. 
--So here I breakdown the time interval format from hh:mm:ss to “ss” and “hh” and I got time interval in ss and hh.


---Then I’ve removed those ride_length which are less than a minute because there is no info. of distance covered given in dataset, 
--by using Haversine formula we can calculate that, but this will make data more vulnerable in respect to analysis. 
--So, it sounds logical that below than 60 sec ride_length is an outliers and also filtering data which ride_length are more than a day 1440 sec with same logic and these are counted as outliers
