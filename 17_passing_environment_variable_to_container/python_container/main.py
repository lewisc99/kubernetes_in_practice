from flask import Flask
import os
import socket

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def hello(path):
    hostname = socket.gethostname()
    message = os.getenv("MESSAGE", "Hello, Kubernetes")
    return f"[v4] {message} (from {hostname})\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4567)
