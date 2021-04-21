textos = []
texto = ("Oi meu nome é pedro")

textos.append(texto)
x = texto.split()

x.remove('Oi')
print(x)
print(x.index('meu'))
' '.join(x)

textos.pop(0)
textos.insert(0,x)
print(textos)