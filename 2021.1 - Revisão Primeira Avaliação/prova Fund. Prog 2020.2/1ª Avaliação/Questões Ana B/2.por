programa
{
	
	funcao inicio()
	{
		//declaração de variáveis
		inteiro codigo, quantidade, valor, valor_total
		valor_total = 0

		//input
		escreva("*--- LOJA DE ENXOVAIS BELOVED ---*\n")
		escreva("1 .... Jogo de Lençol     .... R$70,00\n")
		escreva("2 .... Manta              .... R$85,00\n")
		escreva("3 .... Toalha             .... R$30,00\n")
		escreva("4 .... Capa para almofada .... R$20,00\n\n")
		escreva("Digite o código do produto: ")
		leia(codigo)
		escreva("Digite quantos produtos você quer: ")
		leia(quantidade)
		escreva("\n")

		//desvio condicional
		escolha(codigo)
		{
			caso 1:
				valor_total = quantidade * 70
				pare
			caso 2:
				valor_total = quantidade * 85
				pare
			caso 3:
				valor_total = quantidade * 30
				pare
			caso 4:
				valor_total = quantidade * 20
				pare
		}

		//resultados
		escreva("O valor total a pagar é R$", valor_total , "!! \n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */