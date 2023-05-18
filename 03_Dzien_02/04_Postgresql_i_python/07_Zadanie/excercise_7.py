from flask import Flask, request, render_template
from execute_sql_funkcja import execute_sql
from psycopg2 import IntegrityError


app = Flask(__name__)

@app.route("/movie/<movie_id>", methods=["GET", "POST"])
def movie(movie_id):
    if request.method == 'GET':
        try:
            sql_insert = f"SELECT * FROM movies WHERE id = {movie_id};"
            output = execute_sql(sql_insert, 'cinemas_db')
            if output == []:
                return "Nie ma takiego filmu!"
            else:
                return render_template('form.html')
        except IntegrityError:  # ForeignKeyViolation
            return "Nie możesz usunąć tego ID!"
        except Exception:
            return "Błędne ID!"


if __name__ == '__main__':
    app.run(debug=True)