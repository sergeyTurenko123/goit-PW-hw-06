import sqlite3

def average_mark(sql: str) -> list:
    with sqlite3.connect('salary.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()

sql = """
SELECT student, AVG(evaluation)
FROM evaluations  
GROUP BY student;
"""

print(average_mark(sql))