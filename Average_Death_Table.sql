SELECT
  Age_Group,
  AVG(COVID_19_Deaths) AS Mean_Covid,
  AVG(Total_Deaths) AS Mean_Total,
  AVG(Pneumonia_Deaths) AS Mean_Pneumonia,
  AVG(Influenza_Deaths) AS Mean_Influenza,
  AVG(Pneumonia_or_Influenza) AS Mean_Pneumonia_Influenza,
  AVG(Pneumonia_Influenza_or_COVID_19_Deaths) AS Mean_Pneumonia_Influenza_Covid
FROM
  Health_Science_Dataset b
WHERE
  b.Jurisdiction = 'United States'
  AND Age_Group != 'All Ages'
  AND COVID_19_Deaths IS NOT NULL
  AND Total_Deaths IS NOT NULL
  AND Pneumonia_Deaths IS NOT NULL
  AND Influenza_Deaths IS NOT NULL
  AND Pneumonia_Influenza_or_COVID_19_Deaths IS NOT NULL
  AND Pneumonia_or_Influenza IS NOT NULL
GROUP BY
  Age_Group;
