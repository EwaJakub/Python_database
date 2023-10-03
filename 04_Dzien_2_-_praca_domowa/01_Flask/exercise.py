from flask import Flask, request, render_template
from execute_sql_funkcja import execute_sql

app = Flask(__name__)


@app.route("/books", methods=["GET", "POST"])
def books():
    sql_insert_1 = f"SELECT * FROM book;"
    if request.method == 'GET':
        output_1 = execute_sql(sql_insert_1, 'library_db_2')
        try:
            books_data = []
            for book in output_1:
                books_data.append(book)
            if output_1[0] is None:
                raise IndexError
            else:
                return render_template('form_books.html', books_data=books_data)
        except IndexError:
            return "Nie ma dostępnych książek!"



if __name__ == '__main__':
    app.run(debug=True)
