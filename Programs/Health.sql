SELECT REPLACE(REPLACE(Jurisdiction, 'New York City', 'New York'), 'District of Columbia', 'Virginia') AS Jurisdiction, a.*
FROM Health_Science_Dataset a;