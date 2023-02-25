import mariadb
def getGov(email,senha):
    try:
        conn = mariadb.connect(
            user = 'root',
            password = '123',
            host = 'localhost',
            port = 3306,
            database = 'enermapping'
        )
    except mariadb.Error as e:
        print("Error connecting to MariaDB:{e}")
    cursor = conn.cursor()
    query = "SELECT nome FROM usuario WHERE email='"+email+"' and senha='"+senha+"';"
    cursor.execute(query)
    x = cursor.fetchone()
    if x==[]:
        return False
    else:
        return x
