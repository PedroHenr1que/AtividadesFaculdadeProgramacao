residentsDict = {}

def validateNamesNSalaries(nameSalarie):
    #validate String
    nameSalarie = nameSalarie.strip()

    while nameSalarie.count(' ') != 1:
        print('\nError - Must have only one space between the name and the salarie')
        nameSalarie = input('Resident Name and Salarie: ')

    name,salarie = nameSalarie.split(' ')


    #validate salarie
    if salarie.upper() != 'ZERO':
        condition = True
        while condition:
            try:
                salarie = float(salarie)
                while salarie < 0.0:
                    print('\nError - Salarie cant be negative')
                    salarie = input('Salarie: ')

            except ValueError as error:
                print('\nError - ', error)
                print('Salarie cant be a string')
                salarie = input('Salarie: ')

            else:
                condition = False

    else:
        salarie = 0


    #validate name
    while name.isdigit():
        print('\nError - Name cant be a digit')
        name = input('Name: ')


    #Add to the dict
    residentsDict[name] = salarie


print('AMOUNT OF RESIDENTS'.center(50,'='))
condition = True
while condition:
    try:
        residentsAmount = int(input('Amount of Residents: '))
        while residentsAmount<1:
            print('\nError - Must have at least 1 Resident and the number cant be negative')
            residentsAmount = int(input('Amount of Residents: '))

    except ValueError as error:
        print('\nError - ',error)

    else:
        condition = False


print('\n\n')
print('SPENDING'.center(50,'='))
condition = True
while condition:
    try:
        totalSpending = float(input('Total Spendign: '))
        while totalSpending <= 0.0:
            print('\nError - The spending cant be less than R$0')
            totalSpending = float(input('Total Spendign: '))

    except ValueError as error:
        print('\nError - ',error)

    else:
        condition = False


print('\n\n')
print('RESIDENTS NAMES AND SALARIES'.center(50,'='))
for i in range(residentsAmount):

    residentsNSalarie = input('Resident Name and Salarie: ')

    validateNamesNSalaries(residentsNSalarie)


print('\n\n')
print('RESULT'.center(50,'='))
totalEarning = 0
for name in residentsDict:
    totalEarning += residentsDict[name]

try:
    constant = totalSpending/totalEarning

except ZeroDivisionError as error:
    print(error)
    print('It means you guys are definitely broke')

else:
    for resident,money in residentsDict.items():
        result = money*constant

        print('{} - R${:.2f}'.format(resident,result))