"""
Connects to a SQL database using pymssql
"""

import pymssql

conn = pymssql.connect(
    server="localhost",
    user="weatherdb",
    password="12345",
    database="weather",
    as_dict=True,
)

SQL_QUERY = """
SELECT * FROM weather
"""

cursor = conn.cursor()
cursor.execute(SQL_QUERY)

records = cursor.fetchall()
for r in records:
    print(r)
