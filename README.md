# United States Greenhouse Gas Emissions Analysis (Databricks)


## Project Overview
This project analyzes greenhouse gas emissions across counties in the United States using Databricks Free Edition.
The goal of the project is to explore emission patterns geographically and understand how emissions relate to population at the county and state level.
SQL queries were generated and refined using the Databricks AI Assistant, and the results were visualized through interactive dashboards.

## Tools & Technologies
- **Databricks Free Edition**
- **SQL**
- **Databricks AI Assistant**
- **Databricks Dashboard Visualization**

## Dataset: U.S. County-Level Emissions Data (2023)
The dataset includes environmental and energy-related metrics for 3,000+ counties across the United States, including:
- Population
- Energy consumption
- Vehicle miles traveled
- Fuel consumption
- Greenhouse gas emissions

Key metric used in this analysis:
**GHG emissions (million tons CO₂ equivalent)**

## 🔎 Analysis & Visualizations
1. Geographic Distribution of Emissions
This visualization maps emissions across counties using latitude and longitude coordinates.
     ``` sql
    SELECT 
    latitude,
    longitude,
    TRY_CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS emissions
    FROM emissions.default.emissions_data
  






