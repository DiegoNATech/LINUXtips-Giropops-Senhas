from flask import Flask
import redis
import os

app = Flask(__name__)

# Conectar ao Redis usando a variável de ambiente REDIS_HOST
redis_host = os.getenv('REDIS_HOST', 'localhost')
redis_client = redis.Redis(host=redis_host, port=6379, db=0)

@app.route('/')
def hello():
    return 'Hello, World!'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)

