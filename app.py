from flask import Flask, render_template

# Initialize the Flask application
app = Flask(__name__)

# Define the main route that will render the index.html file
@app.route('/')
def home():
    # This function looks for 'index.html' in the 'templates' folder
    return render_template('index.html')

# Run the application on port 5000, accessible from anywhere
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
