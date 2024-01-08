with base AS (
    SELECT 
    *
    FROM 
     {{ref('cleaned_raw_data')}}
),

final AS (
SELECT 
timestamp_energy_generation::date AS energy_generation_date,
country_code,
plant_type,
plant_type_compacted,
SUM(energy_generation_mw) AS energy_generation_mw
FROM 
base
GROUP BY ALL 
)
SELECT * FROM final