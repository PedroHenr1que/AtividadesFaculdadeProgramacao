# Escreva a funcao potenciacao_em_lista(lista) abaixo:
def potenciacao_em_lista(lista):
    listaNova = []
    if len(lista) == 1 or len(lista) == 0 or len(lista) == 2:
        return lista
            
    else:
        for i in range(len(lista)):
            if i == 0:
                listaNova.append(lista[i])

            elif lista[i]%2 == 0 and i != len(lista)-1:
                listaNova.append(lista[i]**2)

            elif lista[i]%2 != 0 and i != len(lista)-1:
                listaNova.append(lista[i]**3)

            elif i == len(lista)-1:
                listaNova.append(lista[i])


        return listaNova