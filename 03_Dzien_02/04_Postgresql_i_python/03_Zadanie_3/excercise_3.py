from flask import Flask, render_template, request
from execute_sql_funkcja import execute_sql
from psycopg2 import OperationalError, ProgrammingError

app = Flask(__name__)

@app.route('/add_movie', methods=["GET", "POST"])
def main():
    if request.method == 'GET':
        return render_template('form.html')
    elif request.method == "POST":
        name = request.form.get('name')
        descriptions = request.form.get('desc')
        rating = request.form.get('rating')
        sql_insert = f"INSERT INTO movies(name, descriptions, rating) VALUES ('{name}', '{descriptions}', {rating});"
        try:
            execute_sql(sql_insert, 'cinemas_db')
            return "Movie added!"
        except (OperationalError, ProgrammingError):
            return "Movie wasn't added, check it once again!" + render_template('form.html')


if __name__ == '__main__':
    app.run(debug=True)