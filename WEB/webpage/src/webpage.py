

import json
import bottle
from bottle import Bottle, request, response, static_file

server = Bottle()
URL_ENDPOINT = '/'

@server.hook('after_request')
def enable_cors():
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'

@server.route(URL_ENDPOINT, method=['OPTIONS'])
def cors_handler():
  return {}

@server.route('/')
def home():
  return static_file('index.html', root='/webpage/public')

@server.route('/icons/<path>')
def icons(path):
  return static_file(path, root='/webpage/public/icons')

@server.route('/js/<path>')
def js(path):
  return static_file(path, root='/webpage/public/js')

@server.route('/css/<path>')
def css(path):
  return static_file(path, root='/webpage/public/css')

@server.route('/html/<path>')
def html(path):
  return static_file(path, root='/webpage/public/html')


if __name__ == "__main__":
  server.run(host='0.0.0.0', port=80, server='gunicorn', workers=4, debug=True)
