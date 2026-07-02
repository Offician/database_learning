import psycopg2

def get_db_connection():
    db_conn = psycopg2.connect(database="postgres_db",
                           user="postgres_admin",
                           password="rf42f2233--++A",
                           host="localhost", port="5432")
    return db_conn