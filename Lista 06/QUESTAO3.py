nomes = []
saltos = []
medias = []
count = 0
nome = ""

while not(nome.isdigit()):
    nome = input(f"\n\nNome atleta {count+1}: ")
    #Valída o nome 
    while nome == "":
        print("\nError - Nome está vazio")
        nome = input(f"Nome atleta {count+1}: ")

    if not(nome.isdigit()):
        nomes.append(nome)

        print(f"\nAtleta: {nomes[count]}")

        for i in range(5):
            salto = float(input(f"Salto {i+1}: "))
            #Valída o salto
            while salto < 0:
                print("Error - Salto não pode ser menor que 0")
                salto = float(input(f"Salto {i+1}: "))
            
            saltos.append(salto)

        #Os saltos de todos os atletas está na mesma lista, então precisa saber onde começa e termina os saltos de cada atleta
        inicio = 0+count*5
        fim = 5+count*5
        media = sum(saltos[inicio:fim])/5
        medias.append(media)
        count += 1


print("\n\n---RESULTADO---")
for j in range (len(nomes)):
    print(f"\nAtelta: {nomes[j]}")
    for i in range (5):
        print(f"Salto {i}: {saltos[(i+(5*j))]}")
    
    print(f"Média: {medias[j]}")