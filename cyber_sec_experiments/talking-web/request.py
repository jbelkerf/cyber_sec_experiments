import requests

payload = {'Host':'dojo-yeswehack.com'}
req = requests.get('http://challenge.localhost/check', headers=payload)

print(req)
print("\n")
print(req.text)
