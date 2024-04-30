SELECT s.subject_id AS teacher, e.student, AVG(e.evaluation)
FROM evaluations  AS e
JOIN subjects  AS s ON s.subject  = e.subject 
WHERE e.student LIKE 'Sean Allen' AND s.subject_id LIKE 'Robyn Figueroa'
;