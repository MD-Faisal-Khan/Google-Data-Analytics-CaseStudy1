WITH al AS (
SELECT *
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
WHERE ride_len_sec >=60),

calc AS (
SELECT *, (ride_len_sec - avg_calc) / std_calc AS Z_score
FROM (SELECT AVG(ride_len_sec) AS avg_calc, STDDEV_POP(ride_len_sec) AS std_calc
FROM `divvy-trip-2021.divvy_trips_fresh_2021.merged1`
WHERE ride_len_sec >=60),al)

SELECT *
FROM calc
WHERE ABS(z_score) <= 3

--- above code details can be find in read me sec.
