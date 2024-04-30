SELECT student, AVG(evaluation), subject
FROM evaluations
GROUP BY student
ORDER BY AVG(evaluation) DESC
LIMIT 5;