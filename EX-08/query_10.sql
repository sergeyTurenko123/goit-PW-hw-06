SELECT e.student, s.subject_id AS teacher, e.subject
FROM evaluations  AS e
JOIN subjects  AS s ON s.subject  = e.subject 
WHERE e.student LIKE 'Joseph Gross' AND s.subject_id LIKE 'Robyn Figueroa'
;