def conta():
    global resp
    resp = num * multiplicador
    return resp


multiplicador = int(input())
resp = 0
for i in range(11):
    num = i
    conta()

    print('{} x {} = {}'.format(num, multiplicador, resp))
