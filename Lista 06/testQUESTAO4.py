rankAntigo = [6,7,8]
quantidade = [4,2,3]
indexAntigo = []
indexNovo = []
rankNovo = rankAntigo.copy()


x = quantidade.copy()
x.sort()

for i in range(len(rankAntigo)):
    indexAntigo.append(quantidade.index(quantidade[i]))
    indexNovo.append(x.index(quantidade[i]))


for i in range (len(rankAntigo)):
    rankNovo.insert(indexNovo[i], rankAntigo[i])
    rankNovo.pop(-1)

print(rankAntigo)
print(indexAntigo)

print("\n\n",rankNovo)
print(indexNovo)

#print(f"Quantidade que o número apareceu: {quantidade}")
#print(f"Quantidade que o número apareceu ordenada: {x}")

#print(f"\n\nIndex antigo: {indexAntigo}")
#print(f"Index novo: {indexNovo}")

#print(f"rankAntigo números mais inseridos: {rankAntigo}")
