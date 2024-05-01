SELECT student, AVG(evaluation) AS Average_score, subject
FROM evaluations
WHERE subject LIKE 'physics'
GROUP BY student
ORDER BY AVG(evaluation) DESC
LIMIT 1
;