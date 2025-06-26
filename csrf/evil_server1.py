from flask import Flask, request, session, redirect
import os

app = Flask(__name__)
app.secret_key = b'static-key-for-dev'  # don't change each run

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
    return redirect("http://challenge.localhost:80/publish")

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
