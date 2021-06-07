#Read a .csv archive
#Print the name of the oldest Man
#Print the name of the oldest Woman
#Print the amount of Woman
#Print the amount of Man

passengers = {
    'MEN':[],
    'WOMEN':[]
}

def addPassenger(passenger):

    name = passenger[2] + passenger[3]

    if passenger[5] == '':
        age = 0.0
    
    else:
        age = float(passenger[5])
    

    if passenger[4] == 'male':
        passengers['MEN'].append((age, name))

    else:
        passengers['WOMEN'].append((age, name))


def getMenInformations():
    passengers['MEN'].sort()
    menAmount = len(passengers['MEN'])
    oldestMan = passengers['MEN'][-1][-1]
    youngestMan = passengers['MEN'][0][-1]

    print('Men'.center(50,'='))
    print(f'1 - Oldest Man: {oldestMan}')
    print(f'2 - Youngest Man: {youngestMan}')
    print(f'3 - Amount of Men: {menAmount}')

def getWomenInformation():
    passengers['WOMEN'].sort()
    womenAmount = len(passengers['WOMEN'])
    oldestWoman = passengers['WOMEN'][-1][-1]
    youngestWoman = passengers['WOMEN'][0][-1]

    print('Women'.center(50,'='))
    print(f'1 - Oldest Woman: {oldestWoman}')
    print(f'2 - Youngest Woman: {youngestWoman}')
    print(f'3 - Amount of Women: {womenAmount}')


file = open('Chamada_05032021.csv')
registers = file.readlines()
file.close()

for i in range(len(registers)):
    if i != 0:
        register = registers[i].split(',')
        addPassenger(register)


getMenInformations()
getWomenInformation()