SELECT g.group_number, s.student, e.evaluation, e.subject
FROM groups AS g
JOIN students AS s ON s.student_id  = g.id
JOIN evaluations  AS e ON e.student = s.student 
WHERE g.group_number LIKE '1' AND e.subject LIKE 'geography';