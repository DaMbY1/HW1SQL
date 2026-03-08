WITH avg_scores AS (
    SELECT last_name, subject, ROUND(AVG(score)) AS aver
    FROM Journal
    GROUP BY last_name, subject
),
C AS (
    SELECT DISTINCT last_name
    FROM avg_scores
    WHERE aver < 4
),
D AS (
    SELECT DISTINCT last_name
    FROM Journal
    WHERE subject = 'Математика' AND score = 2
),
A AS (
    SELECT last_name
    FROM avg_scores
    WHERE subject = 'Математика' AND aver = 5
)
SELECT DISTINCT last_name
FROM Journal 
WHERE last_name IN (SELECT last_name FROM A)
  AND last_name NOT IN (SELECT last_name FROM D)
  AND last_name NOT IN (SELECT last_name FROM C);
