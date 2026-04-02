WITH raw_listings AS (
    -- SELECT * FROM AIRBNB.RAW.RAW_LISTINGS
    SELECT * FROM {{ source('airbnb', 'listings')}}
)

SELECT 
   id as listing_id,
   listing_url,
   name AS listing_name,
   room_type,
   minimum_nights,
   host_id,
   price AS price_str,
   created_at,
   updated_at
FROM raw_listings