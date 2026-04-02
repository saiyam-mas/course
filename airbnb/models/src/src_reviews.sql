WITH raw_reviews AS (
    -- SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
    SELECT * FROM {{ source('airbnb', 'reviews')}}
)

SELECT 
  listing_id,
  date review_date,
  reviewer_name,
  comments review_text,
  sentiment review_sentiment
FROM raw_reviews