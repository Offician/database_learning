from flask import Flask, request
from db_connect import get_db_connection



app = Flask(__name__)

db_conn = get_db_connection()

cur = db_conn.cursor()
cur.execute(
    '''CREATE TABLE IF NOT EXISTS users (id serial PRIMARY KEY, \
    email text, password text);''')

db_conn.commit()
cur.close()
db_conn.close()


@app.route("/")
def hello_world():
    return f"<p>Hello from flask app!</p>"


@app.route('/login_vuln', methods=['POST'])
def login_vuln():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')
    
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute(f"""
        SELECT * FROM users \
        WHERE email = '{email}' \
        AND password = '{password}';
        """)

    user = cur.fetchone()

    if user:
        return {"message": "Zalogowano"}, 200
    return {"error": "Błąd logowania"}, 401


@app.route('/login_safe', methods=['POST'])
def login_safe():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')
    
    conn = get_db_connection()
    cur = conn.cursor()
    query = """
        SELECT * FROM users \
        WHERE email = %s \
        AND password = %s;
        """

    cur.execute(query, (email, password))
    user = cur.fetchone()

    if user:
        return {"message": "Zalogowano"}, 200
    return {"error": "Błąd logowania"}, 401


if __name__ == '__main__':
    app.run(debug=True)