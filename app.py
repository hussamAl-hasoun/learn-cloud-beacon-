from flask import Flask

# Initialize the Flask application
app = Flask(__name__)

# Define the main route
@app.route('/')
def hello():
    return "Welcome to my CI/CD Graduation Project on AWS!"

# Run the application on port 5000, accessible from anywhere
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
