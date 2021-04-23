textos = []
condicao = True
opcoes = ["C","R","U","D","P"]


texto = input("Isira um texto: ")
while texto == "":
        print("Error - Caixa de texto está vazia")
        texto = input("Isira um texto: ")
textos.append(texto)     


while condicao:
    print("\n\nO que deseja fazer? ")
    print("C - Escrever")
    print("R - Ler")
    print("U - Modificar")
    print("D - Deletar")
    print("P - Parar")
    opcao = input("Opção: ")
    while opcao == "" or not(opcao.upper() in opcoes):
        print("\n---Error---")
        opcao = input("Opção: ")

    #ESCREVER
    if opcao.upper() == "C":
        print("\n\n---ESCREVER---")
        texto = input("Escreva: ")
        while texto == "":
            print("Error - Caixa de texto está vazia")
            texto = input("Escreva: ")
        
        textos.append(texto)

    #LER
    elif opcao.upper() == "R":
        print("\n\n---TEXTO--- ")
        print(textos)

    #MODIFICAR
    elif opcao.upper() == "U":
        print("\n\n---MODIFICAR---")
        for i in range(len(textos)):
            print(f"{i} - {textos[i]}")

        modificar = int(input("Qual frase deseja modificar? Insira o index da frase: "))
        while modificar < 0 or modificar > len(textos):
            print("\nError - Index Inválido")
            modificar = int(input("Qual frase deseja modificar? Insira o index da frase: "))

        print("\n\n---FRASE---")
        print(textos[modificar])

        palavra = input("Qual palavra deseja modificar? ")
        while not(palavra in textos[modificar].split()):
            print("\nError - Palavra não está na frase")
            palavra = input("Qual palavra deseja modificar? ")
        
        palavraModificar = input("Palavrar nova: ")

        #Apaga a frase com a palavra antiga e insere a nova
        textos.insert(modificar , textos[modificar].replace(palavra,palavraModificar))
        textos.pop(modificar+1)

    
    #RREMOVER
    elif opcao.upper() == "D":
        print("\n\n---REMOVER---")
        for i in range(len(textos)):
            print(f"{i} - {textos[i]}")

        remover = int(input("Qual frase deseja remover? Insira o index da frase: "))
        while remover < 0 or remover > len(textos):
            print("Error - Index Inválido")
            remover = int(input("Qual frase deseja remover? Insira o index da frase: "))

        textos.pop(remover) 

    #Parar
    else:
        condicao = False 