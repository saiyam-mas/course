WITH raw_hosts AS (
    -- SELECT * FROM AIRBNB.RAW.RAW_HOSTS
    SELECT * FROM {{ source('airbnb', 'hosts')}}
)

SELECT 
  id host_id,
  name host_name,
  is_superhost,
  created_at,
  updated_at
FROM raw_hosts