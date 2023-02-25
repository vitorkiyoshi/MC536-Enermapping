import mariadb
def getQuery(postOption, t):
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
    query = ''
    retorno = []
    if postOption == 0: #top regioes em consumo
        query = 'select localizacao,latitude,longitude,consumo from Regiao order by consumo DESC limit 5'
        cursor.execute(query)
        x = cursor.fetchall()
        for i in range(len(x)):
            retorno.append([x[i][0],x[i][1],x[i][2],x[i][3]])
        return retorno
    elif postOption == 3: #rios do vale do paraiba, podemos colocar outra regiao
        query = "select localizacao , latitude, longitude, Rio.nome from (Rio left join RioXRegiao on Rio.IDrio = RioXRegiao.cod_rio) left join Regiao on RioXRegiao.cod_regiao_rio = Regiao.IDRegiao where Regiao.localizacao = '"+t+"'"
        cursor.execute(query)
        x = cursor.fetchall()
        if x == []:
            cursor.execute("select latitude,longitude from regiao where localizacao= '"+t+"';")
            x = cursor.fetchall()
            retorno = [t,x,['Nenhum']]
        else:
            nome = x[0][0]
            coords = []
            nome_rio = []
            coords.append([x[0][1],x[0][2]])
            for i in range(len(x)):
                nome_rio.append(x[i][3])
            retorno = [nome,coords,nome_rio]
    elif postOption == 2: #usinas construídas 
        query = "SELECT latitude, longitude, localizacao, cnpj, custo_manutencao, custo_construcao, area_ocupada, tipo_energia, capacidade from Usina join (((Regiao join Construcao on Regiao.IDRegiao = Construcao.cod_regiao) join Empresa_de_energia on Empresa_de_energia.IDusuario = Construcao.cod_empresa)) on Usina.IDusina = Construcao.cod_usina;"
        cursor.execute(query)
        x = cursor.fetchall()
        for i in range(len(x)):
            retorno.append(x[i])
    elif postOption == 1: #Consumo das regiões que usam o rio paraíba do sul
        query = "select localizacao, latitude , longitude , Regiao.consumo, Rio.nome from (Regiao inner join RioXRegiao on Regiao.IDRegiao = RioXRegiao.cod_regiao_rio) left join Rio on RioXRegiao.cod_rio = Rio.IDrio where Rio.nome = '"+t+"';"
        cursor.execute(query)
        x = cursor.fetchall()
        for i in range(len(x)):
            retorno.append(x[i])
    elif postOption == 4: #impactos ambientais
        query = "SELECT latitude, longitude, cnpj, tipo_energia, area_desmatada, area_alagada, emissao_carbono, lixo_nuclear from ((Usina join (((Regiao join Construcao on Regiao.IDRegiao = Construcao.cod_regiao) join Empresa_de_energia on Empresa_de_energia.IDusuario = Construcao.cod_empresa)) on Usina.IDusina = Construcao.cod_usina) join Ocasiona on Usina.IDusina = Ocasiona.cod_usina) JOIN Impacto_Ambiental on Ocasiona.cod_impacto = Impacto_Ambiental.IDimpacto;"
        cursor.execute(query)
        x = cursor.fetchall()
        for i in range(len(x)):
            retorno.append(x[i])
    return retorno

def getRegioes():
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
    query = 'select localizacao from Regiao;'
    cursor.execute(query)
    retorno = cursor.fetchall()
    return retorno

def getRios():
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
    query = 'select nome from Rio;'
    cursor.execute(query)
    retorno = cursor.fetchall()
    return retorno