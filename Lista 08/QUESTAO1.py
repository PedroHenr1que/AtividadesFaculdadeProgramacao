participantesEPresentes = {}
opcoesPresentes = []

print('Feliz Natal'.center(50,'-'))
numParticipantes = int(input('Número de Participantes: '))

for i in range(numParticipantes):
    nomeParticipante = input('Nome: ')

    for x in range(3):
        opcoesPresentes.append(input(f'Presente {x+1}: '))
        

    participantesEPresentes[nomeParticipante] = opcoesPresentes.copy()

    opcoesPresentes.clear()


print('\n\n')
print('Tente Adivinhar'.center(50,'-'))
nomeParticipante = ''
while nomeParticipante != 'FIM':
    nomeParticipante = input('Nome: ')

    if nomeParticipante == 'FIM':
        break

    presente = input('Presente: ')

    if presente in participantesEPresentes[nomeParticipante]:
        print('Uhul! Seu amigo secreto vai adorar')

    elif not(presente in participantesEPresentes[nomeParticipante]):
        print('Tente Novamente!')