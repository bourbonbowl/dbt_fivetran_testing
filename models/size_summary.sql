WITH facts AS (
  SELECT * FROM {{ source('bourbon_bowl_test','facts') }}
),

categories AS (
  SELECT * FROM {{ ref('categories') }}
),

final AS (
  SELECT
    categories.category AS size,
    SUM(facts.value) AS total_value
  FROM facts
  LEFT JOIN categories
  ON facts.size_id = categories.id
  GROUP BY ALL
)

SELECT *
FROM FINAL