SELECT e.subject, AVG(e.evaluation) AS Average_score, g.group_number
FROM evaluations AS e
JOIN students AS s ON s.student = e.student
JOIN  groups AS g ON g.group_number = s.student_id
WHERE g.group_number LIKE '3'
GROUP BY e.subject;