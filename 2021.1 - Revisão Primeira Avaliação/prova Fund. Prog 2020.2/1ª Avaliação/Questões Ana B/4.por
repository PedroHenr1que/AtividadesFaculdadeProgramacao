programa
{
	
	funcao inicio()
	{	
		//declaração de variáveis
		inteiro i, N, qtd_multiplos, soma_multiplos
		real media
		i = 1
		qtd_multiplos = 0
		soma_multiplos = 0

		//input
		escreva("Digite um número: ")
		leia(N)

		//estrutura de repetição/condicional
		enquanto(i <= N)
		{
			se (i%5 == 0){
				qtd_multiplos = qtd_multiplos + 1
				soma_multiplos = soma_multiplos + i
			}
			i = i + 1
		}

		//media
		media = soma_multiplos/qtd_multiplos
		limpa()

		//impressao dos resultados
		escreva("* ----- MULTIPLOS DE CINCO -----*\n\n")
		escreva("A quantidade de multiplos de 5 entre 0 e " , N , " é igual a " , qtd_multiplos , "!\n")
		escreva("A média entre eles é igual a " , media , "!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 700; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */