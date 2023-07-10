from flask import Flask
from execute_sql_funkcja import execute_sql

app = Flask(__name__)


@app.route('/')
def main():
    return str(execute_sql("SELECT * FROM products;", 'exercises_db'))


if __name__ == '__main__':
    app.run(debug=True)
