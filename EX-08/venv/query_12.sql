SELECT e.student, s.student_id AS group_number, e.evaluation, e.subject, MAX(e.created_at) 
FROM evaluations  AS e
JOIN students AS s ON s.student = e.student
;