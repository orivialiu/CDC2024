SELECT
	State_FIPS, Level, Date, State_Postal_Code, 
    Number_of_Trips, Number_of_Trips_1, 
    Number_of_Trips_1_3, Number_of_Trips_3_5, Number_of_Trips_5_10,
    Number_of_Trips_10_25, Number_of_Trips_25_50, Number_of_Trips_50_100,
    Number_of_Trips_100_250, Number_of_Trips_250_500, Number_of_Trips_500
FROM Trips_by_Distance_20240928
WHERE Level = 'State' AND
	State_Postal_Code ='NC' OR 
	State_Postal_Code = 'GA' OR 
    State_Postal_Code = 'NY' OR
    State_Postal_Code = 'WY' OR
    State_Postal_Code = 'CA' OR
    State_Postal_Code = 'FL';