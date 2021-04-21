numerosPares = []
numerosImpares = []
total = []
rankQuantidade = []
rank = []

for i in range (10):
    num = int(input("Número: "))

    if num%2 == 0:
        numerosPares.append(num)

    else:
        numerosImpares.append(num)

total = numerosImpares + numerosPares
total.sort()

for i in range(len(total)):
    if total.count(total[i]) > 1:
        rankQuantidade.append(total.count(total[i]))
        rank.append(total[i])



print(numerosPares)
print(numerosImpares)
print(total)
print(f"Soma números pares: {sum(numerosPares)}")
print(f"Soma números impares: {sum(numerosImpares)}")
print(f"Menor: {total[0]}")
print(f"Maior: {total[-1]}")