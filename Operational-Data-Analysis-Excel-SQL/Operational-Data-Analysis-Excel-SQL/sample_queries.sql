-- Retrieve total records
SELECT COUNT(*) AS total_records
FROM operational_data;

-- Analyze average performance metric by category
SELECT category,
       AVG(performance_metric) AS avg_performance
FROM operational_data
GROUP BY category;

-- Identify high-performing categories
SELECT category,
       AVG(performance_metric) AS avg_performance
FROM operational_data
GROUP BY category
ORDER BY avg_performance DESC;

-- Validate missing values
SELECT COUNT(*) AS missing_values
FROM operational_data
WHERE performance_metric IS NULL;
