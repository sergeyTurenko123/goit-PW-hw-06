SELECT student, AVG(evaluation)
FROM evaluations
GROUP BY student
ORDER BY AVG(evaluation) DESC
LIMIT 5;