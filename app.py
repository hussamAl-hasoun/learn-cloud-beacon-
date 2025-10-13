from flask import Flask

# Initialize the Flask application
# This special configuration tells Flask to serve files from the main folder
app = Flask(__name__, static_folder='.', static_url_path='')

# This route will serve your index.html file
@app.route('/')
def home():
    return app.send_static_file('index.html')

# This handles any other file requests like style.css or script.js
@app.route('/<path:path>')
def all_files(path):
    return app.send_static_file(path)

# Run the application on port 5000
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
