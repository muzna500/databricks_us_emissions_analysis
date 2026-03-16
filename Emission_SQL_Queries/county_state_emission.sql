SELECT county_state_name,
       population,
       TRY_CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS Total_Emission
FROM emissions_data
ORDER BY Total_Emission DESC
LIMIT 10