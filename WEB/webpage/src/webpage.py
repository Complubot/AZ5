
from flask import Flask, send_from_directory
from flask_restful import Resource, Api

app = Flask(__name__)

@app.route('/')
def home():
  return send_from_directory('/webpage/public','index.html')

@app.route('/icons/<path:path>')
def icons(path):
  return send_from_directory('/webpage/public/icons',path)

@app.route('/js/<path:path>')
def js(path):
  return send_from_directory('/webpage/public/js',path)

@app.route('/css/<path:path>')
def css(path):
  return send_from_directory('/webpage/public/css',path)

@app.route('/html/<path:path>')
def html(path):
  return send_from_directory('/webpage/public/html',path)

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=80, debug=True)

