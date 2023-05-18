from flask import Flask
from execute_sql_funkcja import execute_sql


app = Flask(__name__)

@app.route('/movies', methods=["GET"])
def main():
    sql_insert = f"SELECT name FROM movies;"
    output = str(execute_sql(sql_insert, 'cinemas_db'))
    return output

if __name__ == '__main__':
    app.run(debug=True)



