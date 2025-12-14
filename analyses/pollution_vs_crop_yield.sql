SELECT
  crop,
  ROUND(AVG(pm2_5), 2) AS avg_pm25,
  ROUND(AVG(crop_yield), 2) AS avg_yield
FROM {{ ref('fct_aqi_crops') }}
GROUP BY crop
ORDER BY avg_pm25 DESC;
