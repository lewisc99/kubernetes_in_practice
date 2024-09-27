from flask import Flask
import socket

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def hello(path):
    hostname = socket.gethostname()
    return f"[v2] Hello, Kubernetes, from {hostname}!\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4567)