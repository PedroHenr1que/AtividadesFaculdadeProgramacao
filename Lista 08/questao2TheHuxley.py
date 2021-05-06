dicionario = {}
caracteres = []

frase = input('')

for i in range(len(frase)):


    if not frase[i] in frase[:i]:

        caracteres.append([frase[i], frase.count(frase[i])])


caracteres.sort()
caracteres.reverse()

dicionario[frase] = {caracteres[0][0]: caracteres[0][1] }

for i in range(len(caracteres)):
    dicionario[frase].update({caracteres[i][0]: caracteres[i][1]})


for key,value in dicionario[frase].items():
    print(key, value)