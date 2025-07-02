import requests

payload = {'auth': "qjnxkdqg", "login_key":"fxkjhnyk", "signature":"sghjvurh"}
r = requests.get("http://challenge.localhost/access", data={"Host":"challenge.localhost"},params=payload)
print(r)
print(r.text)
