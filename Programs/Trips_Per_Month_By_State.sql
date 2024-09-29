SELECT
  YEAR (Date) AS Year,
  MONTH (Date) AS Month,
  State_Postal_Code,
  SUM(
  	CAST(Number_of_Trips_1 AS numeric) + 
  	CAST(Number_of_Trips_1_3 AS numeric) + 
  	CAST(Number_of_Trips_3_5 AS numeric) + 
  	CAST(Number_of_Trips_5_10 AS numeric) + 
  	CAST(Number_of_Trips_10_25 AS numeric)
		) AS Local_Trips,
  SUM(
    CAST(Number_of_Trips_25_50 AS numeric) + 
    CAST(Number_of_Trips_50_100 AS numeric)
  	) AS Interstate_Trips,
  SUM(
    CAST(Number_of_Trips_100_250 AS numeric) +
    CAST(Number_of_Trips_250_500 AS numeric) + 
    CAST(Number_of_Trips_500 AS numeric)
    ) AS Long_Distance_Trips
FROM
  State_Only_Trips_per_State
WHERE
  YEAR (Date) >= 2019
  AND YEAR (Date) <= 2023
GROUP BY
  YEAR (Date),
  MONTH (Date),
  State_Postal_Code
ORDER BY
  Year,
  Month,
  State_Postal_Code;