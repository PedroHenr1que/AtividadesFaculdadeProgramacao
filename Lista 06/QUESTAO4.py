numerosPares = []
numerosImpares = []
total = []
quantidadeDeVezesNum = []
numerosMaisAparecem = []
indexNovo = []
rankNovo = numerosMaisAparecem.copy()

numeros = int(input("Quantos números você vai digitar? "))

for i in range (numeros):
    num = int(input(f"Número {i+1}: "))
    while num < 0:
        print("\nError - O número não pode ser negativo")
        num = int(input(f"Número {i+1}: "))


    if num%2 == 0:
        numerosPares.append(num)

    else:
        numerosImpares.append(num)

#Faz a concatenação das duas lista e o .sort() é para saber o menor e maior número
total = numerosImpares + numerosPares
total.sort()


#Pega a quantidade de vezes que os números aparecem(se for mais de uma vez), e pega os números q tambem
for i in range(len(total)):
    #valida se tal número aparece mais de uma vez, e o "not(total[i] in total[:i])", não conta o número quando ele aparecer pelas próximas vezes
    if total.count(total[i]) > 1 and not(total[i] in total[:i]):
        quantidadeDeVezesNum.append(total.count(total[i]))
        numerosMaisAparecem.append(total[i])

#Para não dar error no próximo passo
copiaQuantidadeDeVezesNum = quantidadeDeVezesNum.copy()
copiaQuantidadeDeVezesNum.sort()

#Determina para qual index cada número que aparece mais de uma vez deve ir, para fazer o ranking 
for i in range(len(numerosMaisAparecem)):
    indexNovo.append(copiaQuantidadeDeVezesNum.index(quantidadeDeVezesNum[i]))


#Bota cada número no determinado index novo, para fazer o ranking
for i in range(len(numerosMaisAparecem)):
    rankNovo.insert(indexNovo[i], numerosMaisAparecem[i])


#Para fazer o ranking do maior para o menor
rankNovo.reverse()
copiaQuantidadeDeVezesNum.reverse()


print("\n\n\n----RESULTADO-----")
print(f"Soma números pares: {sum(numerosPares)}")
print(f"Soma números impares: {sum(numerosImpares)}")
print(f"Maior: {total[-1]}")
print(f"Menor: {total[0]}")


print("\n\n-----RANK NÚMEROS QUE MAIS APARECERAM-----")
print("Vezes - Número")
for i in range(len(rankNovo)):
    print(f"    {copiaQuantidadeDeVezesNum[i]} - {rankNovo[i]}")