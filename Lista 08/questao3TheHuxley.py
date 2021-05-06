textos = {}
palavrasOldNNew = []
condicao = True

while condicao:

    x = input('')

    if int(x.split()[0]) != 0 and int(x.split()[-1]) != 0:

        numeroDeSubstituições = int(x.split()[0])

        numeroDeLinhas = int(x.split()[-1])


        for i in range(numeroDeSubstituições):
            palavras = input('')
            palavrasOldNNew.append([palavras.split()[0],palavras.split()[-1]])


        for i in range(numeroDeLinhas):
            frase = input('')

            textos[i] = frase


        for i in range(numeroDeSubstituições):

            for x in range(numeroDeLinhas):

                if palavrasOldNNew[i][0] in textos[x]:

                    textos.update({x:textos[x].replace(palavrasOldNNew[i][0], palavrasOldNNew[i][-1])})

        palavrasOldNNew.clear()
        
        for key, value in textos.items():
            print(value)

    else:
        condicao = False