SELECT t.teacher, e.subject, AVG(e.evaluation)
FROM teachers  AS t
JOIN subjects  AS s ON s.subject_id  = t.teacher
JOIN evaluations  AS e ON e.subject = s.subject 
GROUP BY e.subject;