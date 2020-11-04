from flask import Flask

app = Flask(__name__)


@app.route("/")
@app.route("api/v1/hello-world-16")
def hello():
    return "Hello World!" + " 16"


if __name__ == "__main__":
    app.run(port=5000)
