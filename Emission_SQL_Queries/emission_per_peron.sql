SELECT county_state_name,
       population,
       TRY_CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / CAST(population AS DOUBLE) AS Emissions_per_person
FROM emissions_data
ORDER BY Emissions_per_person DESC