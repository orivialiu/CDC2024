SELECT a.*, b.US_Airline_Traffic
FROM Health a
LEFT JOIN Flights b ON a.Year = YEAR(b.DATE) AND a.Month = MONTH(b.DATE);
