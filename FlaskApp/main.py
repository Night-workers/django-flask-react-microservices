from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)


@app.route('/api')
def index():
    return {"id":1,"title":"WORLD"}
    
if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
