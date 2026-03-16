SELECT state_abbr,
       SUM(TRY_CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE))  AS Total_Emissions
FROM emissions_data
GROUP BY state_abbr
ORDER BY Total_Emissions DESC
LIMIT 10