from os import path

#Read an archive 
#Try to open it where the program is 
#If doesnt find, the program must try to find throught the folders until the last one.

def walkThroughtFolders():
    global pathName

    listPath = pathName.split('\\')
    listPath.pop()

    if len(listPath) != 0:

        pathName = ''

        for i in range(len(listPath)):

            if i < len(listPath) - 1:
                pathName += listPath[i] + '\\'

            else: #dont add '\\' to the last directory because in  file = open(f'{pathName}\\minhas senhas.txt') already have
                pathName += listPath[i]

    else:
        print('The file wasnt found in any folder')
        global condition
        condition = False


pathName = path.dirname(path.realpath(__file__))

condition = True
while condition:
    try:
        
        file = open(f'{pathName}\\minhas senhas.txt')

    except FileNotFoundError as error:
        print('\nOops, something wrong - ', error)
        print('File not found in', pathName)
        
        walkThroughtFolders()

    else:
        condition = False
        print('\nFile found in: ', pathName)
        content = file.read()
        file.close()

        print(content)