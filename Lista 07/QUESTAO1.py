patients = []
stop = True

#FUNCTION TO VERIFE THE FULL NAME
def verifeName(namePacientsInfo):

            for i in range(len(patients)):
                count = 0
                breakCondition = False
                #verify if the name the user typed have the same amount of names as the names in the list
                if len(namePacientsInfo.split()) == len(patients[i][2].split()):
                    #verify if each name that the user typed is equal to each name in the list
                    for x in range(len(patients[i][2].split())):
                        condition = namePacientsInfo.split()[x].upper() in patients[i][2].split()[x].upper()

                        if condition == False:
                            break

                        elif condition == True:
                            count += 1
                            #Says if all the names the user typed is equal to all the names in the list or not
                            if count == len(patients[i][2].split()):
                                index = i
                                breakCondition = True

                if breakCondition == True:
                    break

            return [breakCondition, index]


#START
while stop == True:
    print('MENU'.center(50,'-'))
    print('1 - ADD PATIENT')
    print('2 - PACIENTS INFO')
    print('3 - STOP')
    option = int(input('Option: '))
    while option < 1 or option >3:
        print('\nError - Invalid Option')
        option = int(input('Option: '))

    #REGISTER
    if option == 1:
        print('\n\n')
        print('REGISTER'.center(50,'-'))

        #SCREEANING
        print('Screening')
        print('1 - Urgency - Red')
        print('2 - Yellow')
        print('3 - Green')
        print('4 - Blue - No priority')
        screeaning = int(input('Option: '))
        while screeaning < 1 or screeaning > 4:
            print('\nError - Invalid Option')
            option = int(input('Option: '))

        if screeaning == 1:
            colorScreeaning = 'Red'

        elif screeaning == 2:
            colorScreeaning = 'Yellow'

        elif screeaning == 3:
            colorScreeaning = 'Green'

        else:
            colorScreeaning = 'Blue'


        #NAME
        name = input('\nName: ')
        while name == '':
            print('\nError - Blank Field')
            name = input('Complete Name: ')

        #PHONE NUMBER
        phoneNumber = int(input('\nPhone Number: '))
        while len(str(phoneNumber)) < 9 or phoneNumber < 0 or len(str(phoneNumber)) > 9:
            print('\nError - Invalid Number')
            phoneNumber = int(input('Phone Number: '))

        #SEX
        print('\nSex')
        print('1 - Female')
        print('2 - Male')
        option = int(input('Option: '))
        while option < 0 or option > 2:
            print('Error - Invalid option')
            option = int(input('Option: '))


        if option == 1:
            sex = 'Female'

        else:
            sex = 'Male'

        #AGE
        age = int(input('\nAge: '))
        while age < 0:
            print('\nError - Invalid age')
            age = int(input('Age: '))

        #HEALTH PLAN
        print('\nHEALTH PLAN')
        print('1 - Unimed')
        print('2 - Sul América')
        print('3 - SUS')
        print('4 - Private')
        option = int(input('Option: '))
        while option < 1 or option > 4:
            print('\nError - Invalid Option1')
            option = int(input('Option: '))

        if option == 1:
            healthPlan = 'Unimed'

        elif option == 2:
            healthPlan = 'Sul América'

        elif option == 3:
            healthPlan = 'SUS'

        else:
            healthPlan = 'Private'


        #TEMPERATURE
        temperature = float(input('\nTemperature: '))

        
        #PRESSURE
        pressure = float(input('\nPressure: '))


        #add the patients
        patients.append((screeaning, colorScreeaning, name.title(), phoneNumber, sex, age, healthPlan, temperature, pressure))
        patients.sort()

        print('PRIORITY ORDER'.center(50,'-'))
        for i in range(len(patients)):
            print(f'{i+1} - {patients[i][2].split()[0]} - {patients[i][1]}')


    #PACIENTS INFO
    elif option == 2:
        print('\n\n')
        print('PACIENTS INFOS'.center(50,'-'))
        for i in range(len(patients)):
            print(patients[i][2])

        namePacientsInfo = input('Which one would you like to check on? ')
        while namePacientsInfo == '' or verifeName(namePacientsInfo)[0] == False:
            print('\nError - Invalid Name or Blank Field')
            namePacientsInfo = input('Which one would you like to check on? ')

        indexPatientInfo = verifeName(namePacientsInfo)[1]

        print('\n')
        print(f'{patients[indexPatientInfo][2].split()[0]} INFOS'.center(50,'-'))
        print(f'Priority - {patients[indexPatientInfo][1]}')
        print(f'Phone Number - {patients[indexPatientInfo][3]}')
        print(f'Sex - {patients[indexPatientInfo][4]}')
        print(f'Age - {patients[indexPatientInfo][5]}')
        print(f'Helth Plan - {patients[indexPatientInfo][6]}')
        print(f'Temperature - {patients[indexPatientInfo][7]}')
        print(f'Pressure - {patients[indexPatientInfo][8]}')     

    
    #STOP
    else:
        stop = False