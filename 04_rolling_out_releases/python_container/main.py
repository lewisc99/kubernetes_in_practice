from flask import Flask

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def hello(path):
    return "[v2] Hello, Kubernetes!\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4567)

