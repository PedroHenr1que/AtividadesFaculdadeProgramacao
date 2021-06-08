from os import path
palavras = {}

pathName = path.dirname(path.realpath(__file__))

#Lê as frases
frasesFile = open(f'{pathName}\\frases.txt', encoding='UTF-8')
listaFrases = frasesFile.readlines()
frasesFile.close()

listaFrasesUpper = []
for frase in listaFrases:
    listaFrasesUpper.append(frase.strip().replace('.','').replace(',','').upper())


#Lê as as palavras no arquivos 
palavrasFile = open(f'{pathName}\\palavras.txt', encoding='UTF-8')
palavrasPesos = palavrasFile.read()
palavrasFile.close()


#Adiciona as palavras no dicionário
listaPalavrasPesos = palavrasPesos.split(',')
for i in range(len(listaPalavrasPesos)):

    palavraPeso = listaPalavrasPesos[i]
    #Valida se a string está no formato certo
    while not ';' in palavraPeso:
        print(f"\nError - Não tem ';' em ({palavraPeso})")
        palavraPeso = input('Insira novamente no formato (palavra;peso): ')

    palavra,peso = palavraPeso.split(';')
    
    #Valida se a palavra não é um número
    while palavra.isdigit():
        print(f'\nError - Palavra não pode ser número({palavra})')
        palavra = input('Digite a nova palavra: ')

    condicao = True
    while condicao:
        try:
            
            #Valida se o peso está entre -3 e 3
            while int(peso) < -3 or int(peso) > 3:
                print(f'\nError - Peso não pode ser menor qu -3 ou maior que 3 Peso => ({peso})')
                peso = input(f'Digite o novo peso para a palavra => {palavra}: ')    

            palavras[palavra.upper()] = int(peso)

        #Valida se o peso pode ser convertido para inteiro
        except ValueError as error:
            print('\nError - ',error)
            peso = input(f'Digite o peso para está palavra: {palavra} => ')

        else:
            condicao = False

#Avalia as frases
resultadoFile = open(f'{pathName}\\RESULTADO.csv','a',encoding='UTF-8')
resultadoFile.writelines('Frase,Palavras Na Fase,Resultado,Classificação\n')

for frase in listaFrasesUpper:
    palavrasNaFrase = []
    result = 0

    #Encontra as palavras na frase e faz a soma do resultado
    for palavra in frase.split(' '):

        if palavra in list(palavras):
            palavrasNaFrase.append(palavra)
            result += palavras[palavra]

    #Classifica a frase
    if result < 3 and result > -3:
        classFinal = 'NEUTRA'

    elif result >= 3:
        classFinal = 'BOA'

    else:
        classFinal = 'RUIM'

    #Valida se alguma palavra foi encontrada
    if len(palavrasNaFrase) > 0:
        palavrasNaFrase = ';'.join(palavrasNaFrase)

    else:
        palavrasNaFrase = 'Nenhuma Palavra Foi Encontrada'
        classFinal = 'INDETERMINADA'

    resultadoFile.writelines(f'{frase.lower().capitalize()},{palavrasNaFrase.lower().title()},{result},{classFinal}\n')


resultadoFile.close()
print(' AVALIAÇÃO CONCLUIDA '.center(100,'='))
print(" ARQUIVO SALVO COMO 'RESULTADO.csv' ".center(100,'='))
print(f" LOCAL => {pathName} ".center(100,'='))