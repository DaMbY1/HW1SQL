WITH avg_scores AS (SELECT last_name, subject, ROUND(AVG(score)) as aver
FROM Journal
GROUP BY last_name, subject),

C AS (SELECT DISTINCT last_name
FROM avg_scores
WHERE aver < 4),

D AS (SELECT DISTINCT last_name
FROM Journal
WHERE subject = "Математика" and score = 2),

A AS (SELECT last_name
FROM avg_scores
WHERE subject = "Математика" and aver = 5)

SELECT DISTINCT last_name
FROM Journal 
WHERE last_name IN A AND last_name NOT IN D AND last_name NOT IN C;
