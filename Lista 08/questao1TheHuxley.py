participantesEPresentes = {}


numParticipantes = int(input(''))

for i in range(numParticipantes):
    pessoaEPresentes = input('')

    participantesEPresentes[pessoaEPresentes.split()[0]] = [pessoaEPresentes.split()[1], pessoaEPresentes.split()[2], pessoaEPresentes.split()[3]]

#ADIVINHA

nomeEPresenteAdivinha = ''
while nomeEPresenteAdivinha != 'FIM':
    nomeEPresenteAdivinha = input('')

    if nomeEPresenteAdivinha.split()[0] == 'FIM':
        break

    elif nomeEPresenteAdivinha.split()[1] in participantesEPresentes[nomeEPresenteAdivinha.split()[0]]:
        print('Uhul! Seu amigo secreto vai adorar')

    else:
        print('Tente Novamente!')