SELECT name
FROM employer AS emp
LEFT JOIN vacancy AS vac ON emp.employer_id = vac.employer_id AND vac.active = TRUE
GROUP BY emp.employer_id, emp.name
HAVING COUNT(active) <= 5;
