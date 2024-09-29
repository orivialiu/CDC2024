SELECT
  YEAR (b.Start_Week) as Year,
  MONTH (b.Start_Week) as Month,
  b.Jurisdiction,
  SUM(Coalesce(b.COVID_19_Deaths, c.Mean_Covid)) Covid_Deaths,
  SUM(Coalesce(b.Total_Deaths, c.Mean_Total)) Total_Deaths,
  SUM(Coalesce(b.Pneumonia_Deaths, c.Mean_Pneumonia)) Pneumonia_Deaths,
  SUM(Coalesce(b.Influenza_Deaths, c.Mean_Influenza)) Influenza_Deaths,
  SUM(Coalesce(b.Pneumonia_or_Influenza, c.Mean_Pneumonia_Influenza)) Pneumonia_Influenza_Deaths,
  SUM(Coalesce(b.Pneumonia_Influenza_or_COVID_19_Deaths,c.Mean_Pneumonia_Influenza_Covid)) Pneumonia_Influenza_Covid
From
  Health_Science_Dataset b
  LEFT JOIN Average_Death_Counts c ON b.Jurisdiction = c.Jurisdiction
WHERE
  b.Jurisdiction != 'United States' AND b.Jurisdiction NOT LIKE 'HHS%'
GROUP BY
  YEAR (b.Start_Week),
  MONTH (b.Start_Week),
  b.Jurisdiction
ORDER BY
  Year,
  Month,
  b.Jurisdiction;
