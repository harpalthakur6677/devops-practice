from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>Hello from harpal - DevOps Day 4 is LIVE!</h1><h3>Ye docker ke andar se chal raha hai</h3>"

if __name__ == "__main__":
    print("Starting Flask app...")
    app.run(host='0.0.0.0', port=5000, debug=True)