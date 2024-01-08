SELECT
datetime_utc::timestamp AS timestamp_energy_generation, 
price_area,
country_code,
EIC_code,
Plant_label,
plant_type,
CASE WHEN plant_type LIKE '%Fossil%' THEN 'Fossil Energy'
     WHEN plant_type = 'Nuclear' THEN 'Nuclear Energy'
    ELSE 'Renewable Energy' END AS plant_type_compacted,
COALESCE(generation, 0) AS energy_generation_mw
FROM 
 {{source('raw_data', 'entsoe_generation_unit_raw')}}
