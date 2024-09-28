SELECT
  DATE,
  ENPLANED as US_Airline_Traffic
From
  ENPLANED a
WHERE
  US_Airline_Traffic IS NOT NULL
  AND YEAR (DATE) <= 2023
  AND YEAR (DATE) >= 2019;


