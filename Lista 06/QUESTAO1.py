tutor = 0
cachorros = 0
gatos = 0
outros = 0

while tutor < 5:
    print(f"\n\n----- Tutor {tutor + 1} -----")

    quantidade = int(input("Quantos pets você tem? "))
    while quantidade < 0:
        print("\nError - A quantidade não pode ser menor que 0")
        quantidade = int(input("Quantos pets você tem? "))

    for i in range(quantidade):
        print("\n\n1 - Cachorro")
        print("2 - Gato")
        print("3 - Outros")
        codigoPet = int(input("Qual código do seu pet? "))

        while codigoPet < 1 or codigoPet > 3:
            print("Error - Código inválido")
            codigoPet = int(input("Qual código do seu pet? "))

        if codigoPet == 1:
            cachorros += 1

        elif codigoPet == 2:
            gatos += 1

        else:
            outros += 1

        
    tutor += 1


print(f"\n\nPets ao total: {outros + cachorros + gatos}")
print(f"Cachorros: {cachorros}")
print(f"Gatos: {gatos}")