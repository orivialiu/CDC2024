SELECT
	State_FIPS, Level, Date, State_Postal_Code, 
    Number_of_Trips, Number_of_Trips_1, 
    Number_of_Trips_1_3, Number_of_Trips_3_5, Number_of_Trips_5_10,
    Number_of_Trips_10_25, Number_of_Trips_25_50, Number_of_Trips_50_100,
    Number_of_Trips_100_250, Number_of_Trips_250_500, Number_of_Trips_500
FROM StatesCounty_Trips_per_Month
WHERE Level = 'State' AND YEAR(Date) >= 2019 AND Year(Date) <= 2023;