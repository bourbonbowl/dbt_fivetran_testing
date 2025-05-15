WITH commit AS (
    SELECT * FROM {{ source('bourbon_bowl_github','commit') }}
)