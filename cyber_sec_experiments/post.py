import requests


r = requests.post("http://challenge.localhost/verify", data={'login_key':'olmvwoux'})
print(r, r.text)
