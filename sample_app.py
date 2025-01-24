from flask import Flask, request
from flask import render_template
import random
app = Flask(__name__)
@app.route("/")
def main():
 num = random.randint(0, 100)
 svr = [str(f"{f}: {request.environ[f]}") for f in request.environ]
 return render_template("index.html", count=num, svr=svr)
if __name__ == "__main__":
  app.debug = True
  app.run(host="0.0.0.0", port=5050)
