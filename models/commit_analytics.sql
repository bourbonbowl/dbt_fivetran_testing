WITH commit AS (
    SELECT * FROM {{ ref('commit') }}
),

transform AS (
    SELECT author_date, COUNT(DISTINCT sha) AS commit_count
    FROM commit
    GROUP BY ALL
),

final AS (
    SELECT author_date, commit_count
    FROM transform
)

SELECT * FROM final