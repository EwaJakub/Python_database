from psycopg2 import connect, ProgrammingError


def execute_sql(sql_code, db):
    """
    Run given sql code with psycopg2.

    :param str sql_code: sql code to run
    :param str db: name of db,

    :rtype: list
    :return: data from psycobg2 cursor as a list (can be None) if nothing to fetch.
    """

    USER = "postgres"
    HOST = "localhost"
    PASSWORD = "coderslab"

    with connect(user=USER, host=HOST, password=PASSWORD, dbname=db) as conn:
        with conn.cursor() as cursor:
            cursor.execute(sql_code)
            try:
                # output = [i for i in cursor]
                output = cursor.fetchall()
                conn.commit()
            except ProgrammingError:
                output = None
    return output


if __name__ == '__main__':
    sql_insert = "INSERT INTO cinemas(name, address) VALUES ('Cinemacity4', 'wieliczka 16');"
    sql_select = "SELECT * FROM cinemas;"
    print(execute_sql(sql_select, 'cinemas_db'))

