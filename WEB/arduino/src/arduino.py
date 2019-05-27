
import json
import bottle
from bottle import route, run, request, response, hook

# Base Endpoint
URL_ENDPOINT = '/'

@hook('after_request')
def enable_cors():
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'

# For CORS
@route(URL_ENDPOINT, method=['OPTIONS'])
def cors_handler():
  return {}

@route(URL_ENDPOINT, method=['GET'])
def get_lookup():
  return {
    'configuration':[
      'arduino',
      'cuaga-force',
      'zebra-force'
    ]
  }

if __name__ == "__main__":
  run(host='0.0.0.0', port=80, server='gunicorn', workers=4, debug=True)

