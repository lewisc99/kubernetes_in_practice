from flask import Flask

app = Flask(__name__)

# Counter to simulate failure after 3 successful requests
counter = {'success_count': 0}


@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def hello(path):
    # Increment the success count
    counter['success_count'] += 1

    # Simulate failure after 3 successful requests
    if counter['success_count'] > 3:
        raise Exception("Simulated failure after 3 successful responses!")

    return "App is running fine"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4567)
