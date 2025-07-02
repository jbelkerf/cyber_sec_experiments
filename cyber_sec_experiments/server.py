from flask import Flask, request, jsonify

# Create a Flask web app
app = Flask(__name__)

# Define the route for /me
@app.route('/me', methods=['GET', 'POST'])
def me():
    method = request.method
    query_params = request.args
    form_data = request.form
    json_data = None

    # Capture JSON if Content-Type is application/json
    if request.is_json:
        json_data = request.get_json()

    # Print the captured data in the terminal
    print(f"Method: {method}")
    print(f"Query Parameters: {query_params}")
    print(f"Form Data: {form_data}")
    print(f"JSON Data: {json_data}")

    # Return a response that shows the captured information
    return jsonify({
        "Method": method,
        "Query Parameters": dict(query_params),
        "Form Data": dict(form_data),
        "JSON Data": json_data
    })

# Run the app on localhost:30000
if __name__ == '__main__':
    app.run(host='127.0.0.1', port=30000)

