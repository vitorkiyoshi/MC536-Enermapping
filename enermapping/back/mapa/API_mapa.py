from flask import request
from flask import Blueprint
from flask import jsonify
from flask_jwt_extended import get_jwt_identity
from flask_jwt_extended import jwt_required
from flask_jwt_extended import create_access_token
import mapa.bdquery as bd
import mapa.login as bdl

import sys,os
sys.path.append(os.path.join(os.path.dirname(__file__)))

mapBP = Blueprint('map', __name__)

# retorna mapa do usuario
@mapBP.route('/login',methods=['POST'])
def login():
    campo = request.get_json()
    e = campo['email']
    s = campo['senha']

    retorno = bdl.getGov(e,s)
    if retorno:
        token = create_access_token(identity=e)
        retSuccess = {'status': 'Sucesso', 'message': 'Logado com sucesso.', 'data': {'token': token, 'user' : retorno}}
        return jsonify(retSuccess),200
    else:
        retFail = {'status': 'Falha', 'message': 'Falha ao logar(usuário/senha incorretas).', 'data': []}
        return jsonify(retFail),403


# retorna mapa do usuario
@mapBP.route('/teste2',methods=['POST'])
@jwt_required()
def mapa2():
    user = get_jwt_identity()
    campo = request.get_json()
    n = campo['option']
    t = campo['string']
    retorno = bd.getQuery(n,t)
    responseMapSuccess = {'status': 'Sucesso', 'message': 'sucesso', 'data' : retorno}

    return jsonify(responseMapSuccess),200

@mapBP.route('/rios',methods=['GET'])
@jwt_required()
def rios():
    user = get_jwt_identity()
    retorno = bd.getRios()
    responseMapSuccess = {'status': 'Sucesso', 'message': 'sucesso', 'data' : retorno}

    return jsonify(responseMapSuccess),200

@mapBP.route('/regioes',methods=['GET'])
@jwt_required()
def regioes():
    user = get_jwt_identity()
    retorno = bd.getRegioes()
    responseMapSuccess = {'status': 'Sucesso', 'message': 'sucesso', 'data' : retorno}
    return jsonify(responseMapSuccess),200
