from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Simple App!"

if __name__ == "__main__":
    # Bind to all interfaces for container networking
    app.run(host="0.0.0.0", port=5000)