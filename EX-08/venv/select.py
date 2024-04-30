import sqlite3

def select(sql: str) -> list:
    with sqlite3.connect('salary.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()

sql_1 = """
SELECT student, AVG(evaluation)
FROM evaluations
GROUP BY student
ORDER BY AVG(evaluation) DESC
LIMIT 5;
"""
sql_2 = """
SELECT student, AVG(evaluation), subject
FROM evaluations
GROUP BY student
ORDER BY AVG(evaluation) DESC
LIMIT 5;
"""

sql_3 = """
SELECT e.subject, AVG(e.evaluation), g.group_number
FROM evaluations AS e
JOIN students AS s ON s.student = e.student
JOIN  groups AS g ON g.group_number = s.student_id
WHERE g.group_number LIKE '2'
GROUP BY e.subject;
"""




print(select(sql_1))
print(select(sql_2))
print (select(sql_3))