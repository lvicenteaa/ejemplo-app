from pymongo import MongoClient

MONGO_URI = 'mongodb://localhost:27017'

def dbConnection():
    try:
        client = MongoClient(MONGO_URI)
        db = client["dbb_products_app"]
    except ConnectionError:
        print('Error de conexion con la base de datos')
    return db
