nome = []
idadeDefinitiva = []
alturaDefinitiva = []
opcaoDefinitiva = [1,2,3,4,5,6]
opcaoAlteracaoDados = [1,2]
condicao = True


while condicao == True:
    #----------------------------------------------Opções------------------------------------------
    print("\n" * 10)
    print("-------Opções-------")
    print("1 - Lista das Pessoas (Apenas Nomes)")
    print("2 - Cadastrar uma Pessoa")
    print("3 - Consultar os detalhes de uma pessoa")
    print("4 - Editar dados de uma Pessoa")
    print("5 - Remover uma Pessoa")
    print("6 - Encerrar")
    opcao = int(input("Opção: "))
    while not(opcao in opcaoDefinitiva):
        print("\nError - Sua opção não corresponde com nenhuma das alternativas.")
        opcao = int(input("Opção: "))


    #----------------------------------------------Lista--------------------------------------------
    if opcao == 1:
        print("\n\n-LISTA DOS NOMES EM ORDEM ALFABÉTICA-\n")
        nomeAlfabetica = nome.copy()
        nomeAlfabetica.sort()
        print(nomeAlfabetica)


    #----------------------------------------------Cadastro------------------------------------------
    elif opcao == 2:
        print("\n\n------------CADASTRAMENTO------------\n")
        #Nome
        nome.append(input("\nNome: "))

        #Idade
        idade = int(input("\nIdade: "))
        while idade < 0:
            print("\nError --- Idade Não pode ser menor que 0")
            idade = int(input("Idade: "))
        idadeDefinitiva.append(idade)

        #Altura
        altura = int(input("\nAltura: "))
        while altura < 0:
            print("Erro --- Altura não pode ser menor que zero")
            altura = int(input("Altura: "))
        alturaDefinitiva.append(altura)


    #---------------------------------------------Detalhes--------------------------------------------
    elif opcao == 3:
        print("\n\n---CONSULTAR DETALHES DE UMA PESSOA---")
        print("Nomes:")

        for i in range(len(nome)):
            print(nome[i])

        nomeDados = input("\nNome da pessoa que deseja Consultar: ")
        while not(nomeDados in nome):
            print("\nErros - O nome não corresponde a nenhum no sistema, tente de novo.")
            nomeDados = input("Nome da pessoa que deseja Consultar: ")
        
        print("\nRESULTADO: ")
        print(f"Nome: {nomeDados}")
        print(f"Idade: {idadeDefinitiva[nome.index(nomeDados)]}")
        print(f"Altura: {alturaDefinitiva[nome.index(nomeDados)]}")


    #---------------------------------------------Editar------------------------------------------------
    elif opcao == 4:
        print("\n\n-----EDITAR DADOS DE UMA PESSOA-----")
        print("Nomes:")

        for i in range(len(nome)):
            print(nome[i])

        nomeDados = input("\nNome da pessoa que deseja alterar dados: ")
        while not(nomeDados in nome):
            print("\nErros - O nome não corresponde a nenhum no sistema, tente de novo.")
            nomeDados = input("Nome da pessoa que deseja alterar dados: ")

        print(f"\nNome: {nomeDados}")
        print(f"1 - Idade: {idadeDefinitiva[nome.index(nomeDados)]}")
        print(f"2 - Altura: {alturaDefinitiva[nome.index(nomeDados)]}")
        opcao = int(input("Opção que deseja alterar: "))
        while not(opcao in opcaoAlteracaoDados):
            print("\nError - Sua opção não corresponde com nenhuma das alternativas.")
            opcao = int(input("Opção que deseja alterar: "))
            
        if opcao == 1:
            idadeDefinitiva.pop(nome.index(nomeDados))

            print("\n-----Vamos Alterar a Idade-----")
            idade = int(input("Nova idade: "))
            while idade < 0:
                print("\nError --- Idade Não pode ser menor que 0")
                idade = int(input("\nNova idade: "))
            
            idadeDefinitiva.insert(nome.index(nomeDados), idade)

            print("\n----------Novos Dados----------")
            print(f"Nome: {nomeDados}")
            print(f"Idade: {idadeDefinitiva[nome.index(nomeDados)]}")
            print(f"Altura: {alturaDefinitiva[nome.index(nomeDados)]}")


        elif opcao == 2:
            alturaDefinitiva.pop(nome.index(nomeDados))

            print("\n-----Vamos Alterar a Altura-----")
            altura = int(input("Nova altura: "))
            while altura < 0:
                print("\nError --- Altura Não pode ser menor que 0")
                altura = int(input("Nova altura: "))
            
            alturaDefinitiva.insert(nome.index(nomeDados), altura)

            print("\n----------Novos Dados----------")
            print(f"Nome: {nomeDados}")
            print(f"Idade: {idadeDefinitiva[nome.index(nomeDados)]}")
            print(f"Altura: {alturaDefinitiva[nome.index(nomeDados)]}")


    #------------------------------------------Remover---------------------------------------------
    elif opcao == 5:
        print("\n\n------REMOVER UM PESSOA------")
        print("Nomes:")

        for i in range(len(nome)):
            print(nome[i])

        nomeDados = input("\nNome da pessoa que deseja remover: ")

        while not(nomeDados in nome):
            print("\nErros - O nome não corresponde a nenhum no sistema, tente de novo.")
            nomeDados = input("Nome da pessoa que deseja remover: ")

        alturaDefinitiva.pop(nome.index(nomeDados))
        idadeDefinitiva.pop(nome.index(nomeDados))
        nome.pop(nome.index(nomeDados))

        print("\n---PESSOA REMOVIDA COM SUCESSO---")
        for i in range(len(nome)):
            print(nome[i])


    #----------------------------------------------------------------------------------------------
    else:
        condicao = False

print("\n" * 10)
print("--------------------OBRIGADO--------------------")