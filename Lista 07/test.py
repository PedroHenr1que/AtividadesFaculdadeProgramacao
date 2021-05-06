#x = 999999
#print(len(str(x)))
y = [(1,'pedro henrique araujo de assis bezerra'),(70, 'alvaro jorge'), (50,'renata')]

print(y[0][1].split()[0])
name = input('Name: ')

def nomeExiste(name):
    for i in range(len(y)):
        count = 0
        breakCondition = False
        if len(name.split()) == len(y[i][1].split()):

            for x in range(len(y[i][1].split())):
                condicao = name.split()[x] in y[i][1].split()[x]
                
                if condicao == False:
                    break

                elif condicao == True:
                    count += 1

                    if count == len(y[i][1].split()):
                        index = i
                        #print('Nome existe')
                        #print(index)
                        breakCondition = True
                        

        if breakCondition == True:
            break

    return index


print(nomeExiste(name))



    





#for i in range(len(y)):
#   condicao = x in y[i][1]

#    if condicao == True:
#        index = i
#        break
        

#print(condicao, index)