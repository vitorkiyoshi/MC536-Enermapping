from flask import Flask
from flask_cors import CORS
from flask_jwt_extended import JWTManager

from mapa.API_mapa import mapBP

app = Flask(__name__)
app.config["DEBUG"] = True
app.config["JWT_SECRET_KEY"] = "45y4h6h5465666^$%&%^&56ygf4"
jwt = JWTManager(app)
CORS(app)

@app.route('/')
def main():
    return "<h1> API Flask <h1>"

# adiciona sistema de mapa
app.register_blueprint(mapBP)


# inicia server para api
app.run()