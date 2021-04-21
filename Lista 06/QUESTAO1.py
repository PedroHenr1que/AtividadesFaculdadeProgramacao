cachorros = 0
gatos = 0
outros = 0
codigoPet = -1

while codigoPet != 0:
    print("\n\n1 - Cachorro")
    print("2 - Gato")
    print("3 - Outros")
    print("0 - Para Parar")
    codigoPet = int(input("Qual código do seu pet? "))
    while codigoPet < 0 or codigoPet > 3:
        print("Error - Código inválido")
        codigoPet = int(input("Qual código do seu pet? "))

    if codigoPet == 1:
        cachorros += 1

    elif codigoPet == 2:
        gatos += 1

    elif codigoPet == 3:
        outros += 1 

print(f"\n\nPets ao total: {outros + cachorros + gatos}")
print(f"Cachorros: {cachorros}")
print(f"Gatos: {gatos}")