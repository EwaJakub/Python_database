from flask import Flask, request, render_template
from execute_sql_funkcja import execute_sql
from psycopg2 import IntegrityError


app = Flask(__name__)


@app.route("/movie/<movie_id>", methods=["GET", "POST"])
def movie(movie_id):
    sql_insert_1 = f"SELECT * FROM Movies WHERE id = {movie_id};"
    if request.method == 'GET':
        output_1 = execute_sql(sql_insert_1, 'cinemas_db')
        try:
            movie_data = {
                 "movie_id_value": output_1[0][0],
                 "movie_title": output_1[0][1],
                 "movie_description": output_1[0][2]
            }
            if output_1[0] is None:
                raise IndexError
            else:
                return render_template('form.html', movie_data=movie_data)
        except IndexError:
            return "Nie ma takiego filmu!"
    elif request.method == 'POST':
        try:
            name = request.form['name']
            description = request.form['desc']
            sql_insert_2 = f"UPDATE Movies SET name='{name}', description='{description}' WHERE id=1;"
            output_2 = execute_sql(sql_insert_2, 'cinemas_db')
            return "zmieniono dane filmu"
        except IndexError:
            return "ups... coś poszło źle!"


if __name__ == '__main__':
    app.run(debug=True)
