import os
import psycopg2
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Fetch credentials from .env
host = os.getenv("PG_HOST")
user = os.getenv("PG_USER")
password = os.getenv("PG_PASSWORD")  
database = os.getenv("PG_DATABASE")
port = os.getenv("PG_PORT")

# Establish connection
conn = psycopg2.connect(
    host=host,
    user=user,
    password=password,
    database=database,
    port=port
)

print("Connected to PostgreSQL!")

cursor = conn.cursor()

# Create table if not exists
cursor.execute("""
CREATE TABLE IF NOT EXISTS hostel (
    id INT PRIMARY KEY,
    f_name VARCHAR(50) NOT NULL,
    l_name VARCHAR(50) NOT NULL,
    joining_date DATE NOT NULL,
    semester INT NOT NULL,
    room_number INT NOT NULL
);
""")

# Update a row
cursor.execute("UPDATE hostel SET room_number = 111 WHERE id = 7")

# Fetch and display all rows
cursor.execute("SELECT * FROM hostel")
rows = cursor.fetchall()
print("Hostel Records:")
for row in rows:
    print(row)

# Commit changes and close connection
conn.commit()
cursor.close()
conn.close()
print("Connection closed.")
