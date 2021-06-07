#Receive an archive name and create it
#Write in this first achive
#Convert the content to morse in another archive
#Space is represented by '/'

translate = {
    'A':'.-',
    'B':'-...',
    'C':'-.-.',
    'D':'-..',
    'E':'.',
    'F':'..-.',
    'G':'--.',
    'H':'....',
    'I':'..',
    'J':'.---',
    'K':'-.-',
    'L':'.-..',
    'M':'--',
    'N':'-.',
    'O':'---',
    'P':'.--.',
    'Q':'--.-',
    'R':'.-.',
    'S':'...',
    'T':'-',
    'U':'..-',
    'V':'...-',
    'W':'.--',
    'X':'-..-',
    'Y':'-.--',
    'Z':'--..',
    '1':'.----',
    '2':'..---',
    '3':'...--',
    '4':'....-',
    '5':'.....',
    '6':'-....',
    '7':'--...',
    '8':'---..',
    '9':'----.',
    '0':'-----',
    ' ':'/'
}

def convertAndCreatMorseArchive():
    contentConvertedToMorse = ''
    for character in contentNormalFile:
        contentConvertedToMorse += translate[character.upper()]+' '
        
    #here wont have a problem too because just creates one
    morseArchive = open(f'{nameNormalArchive}MORSE.txt','w')
    morseArchive.write(contentConvertedToMorse)
    morseArchive.close()


nameNormalArchive = input('Archive Name: ')

#Dont need a try except here beacuase it opens with the parameter 'w', so if the program doesnt find the archive it just creates one
normalFile = open(nameNormalArchive,'w')
normalFile.write(input('Write to convert to morse code: '))
normalFile.close()


condition = True
while condition:
    try:
        #Here probably wont have any problem beacause its opens the same archive with the same name, but opes with parameter 'r', so it must have an archive that matches the name.
        normalFile = open(nameNormalArchive)

    except FileNotFoundError as error:
        print('Something wrong - ', error)
        nameNormalArchive = input('Try changing the name: ')

    else:
        condition = False

        
contentNormalFile = normalFile.read()
normalFile.close()

convertAndCreatMorseArchive()