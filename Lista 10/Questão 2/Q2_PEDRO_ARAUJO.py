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
        
    morseArchive = open(f'{nameNormalArchive}MORSE.txt','w')
    morseArchive.write(contentConvertedToMorse)
    morseArchive.close()


nameNormalArchive = input('Archive Name: ')

normalFile = open(nameNormalArchive,'w')
normalFile.write(input('Write to convert to morse code: '))
normalFile.close()

normalFile = open(nameNormalArchive)
contentNormalFile = normalFile.read()
normalFile.close()

convertAndCreatMorseArchive()