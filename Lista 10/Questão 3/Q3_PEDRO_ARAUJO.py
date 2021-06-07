# Read a .txt file
# Converte de morse code 
# Print 

translate = {
    '.-':'A',
    '-...':'B',
    '-.-.':'C',
    '-..':'D',
    '.':'E',
    '..-.':'F',
    '--.':'G',
    '....':'H',
    '..':'I',
    '.---':'J',
    '-.-':'K',
    '.-..':'L',
    '--':'M',
    '-.':'N',
    '---':'O',
    '.--.':'P',
    '--.-':'Q',
    '.-.':'R',
    '...':'S',
    '-':'T',
    '..-':'U',
    '...-':'V',
    '.--':'W',
    '-..-':'X',
    '-.--':'Y',
    '--..':'Z',
    '.----':'1',
    '..---':'2',
    '...--':'3',
    '....-':'4',
    '.....':'5',
    '-....':'6',
    '--...':'7',
    '---..':'8',
    '----.':'9',
    '-----':'0',
    '/':' ',
    '':''
}

archiveName = input('Morse archive to converte: ')
morseArchive = open(f'{archiveName}.txt')

morseCodeList = morseArchive.read().split(' ')

morseArchive.close()

convertedText = ''
for code in morseCodeList:
    
    convertedText += translate[code]

print(convertedText)