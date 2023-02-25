import mariadb

def criarbd():
    try:
        conn = mariadb.connect(
            user = 'root',
            password = '123',
            host = 'localhost',
            port = 3306,
        )
    except mariadb.Error as e:
        print("Error connecting to MariaDB:{e}")
    cursor = conn.cursor()
    cursor.execute('CREATE DATABASE enermapping')
    conn.close()

def lerComandos(filename):
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
    #criando cursor
    cursor = conn.cursor()

    file = open(filename,'r')
    sqlfile = file.read()
    file.close()
    sqlQUERYS = sqlfile.split(';')
    for command in sqlQUERYS:
        try:
            if command.strip() != '':
                cursor.execute(command)
        except IOError:
            print ("Command skipped: ", IOError)
    conn.close()
criarbd()
lerComandos('tables.sql')