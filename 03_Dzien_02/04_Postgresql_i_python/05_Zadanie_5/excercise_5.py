from flask import Flask
from execute_sql_funkcja import execute_sql

app = Flask(__name__)

@app.route("/movie/<movie_id>", methods=["GET", "POST"])
def movie(movie_id):
    try:
        sql_insert = f"SELECT * FROM movies WHERE id = {movie_id};"
        output = execute_sql(sql_insert, 'cinemas_db')
        if output == []:
            return "Nie ma takiego ID!"
        else:
            return str(output)
    except Exception:
        return "Błędne ID!"


if __name__ == '__main__':
    app.run(debug=True)

