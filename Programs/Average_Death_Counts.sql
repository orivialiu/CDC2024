SELECT
  Jurisdiction,
  ROUND(AVG(COVID_19_Deaths)) AS Mean_Covid,
  ROUND(AVG(Total_Deaths)) AS Mean_Total,
  ROUND(AVG(Pneumonia_Deaths)) AS Mean_Pneumonia,
  ROUND(AVG(Influenza_Deaths)) AS Mean_Influenza,
  ROUND(AVG(Pneumonia_or_Influenza)) AS Mean_Pneumonia_Influenza,
  ROUND(AVG(Pneumonia_Influenza_or_COVID_19_Deaths)) AS Mean_Pneumonia_Influenza_Covid
FROM
  Health b
WHERE
  b.Jurisdiction != 'United States'
  AND b.Jurisdiction NOT LIKE 'HHS%'
  AND COVID_19_Deaths IS NOT NULL
  AND Total_Deaths IS NOT NULL
  AND Pneumonia_Deaths IS NOT NULL
  AND Influenza_Deaths IS NOT NULL
  AND Pneumonia_Influenza_or_COVID_19_Deaths IS NOT NULL
  AND Pneumonia_or_Influenza IS NOT NULL
GROUP BY
  b.Jurisdiction
ORDER BY Jurisdiction;
