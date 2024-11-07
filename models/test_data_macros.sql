SELECT *,
       {{ perc_change("sales_q4", "sales_q1") }} AS change
FROM {{ source("Data Sources", "Sales") }}

