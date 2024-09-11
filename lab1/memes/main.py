from flask import Flask, url_for

app = Flask(__name__)

@app.route("/")
def hello_world():
    # app.se
    # return url_for("dir1", filename="goldfish.jpg")
    return "hell\n"
