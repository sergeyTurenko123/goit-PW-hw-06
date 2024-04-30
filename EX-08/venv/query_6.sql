SELECT g.group_number, s.student
FROM groups AS g
JOIN students AS s ON s.student_id  = g.id
WHERE g.group_number LIKE '1';