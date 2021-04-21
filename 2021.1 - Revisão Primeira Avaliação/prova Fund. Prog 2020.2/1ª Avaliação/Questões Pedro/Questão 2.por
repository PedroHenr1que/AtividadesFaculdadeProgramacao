programa
{
	
	funcao inicio()
	{
		inteiro cod , quant

		escreva("Qual codigo do produto? ")
		leia(cod)
		limpa()

		escreva("Qual a quantidade? ")
		leia(quant)
		limpa()

		escolha (cod)
		{
			caso (1):
			     escreva("O valor total é R$" , quant*70)
			     pare
			     
			caso (2):
			     escreva("O valor total é R$" , quant*85)
			     pare

			caso (3):
			     escreva("O valor total é R$" , quant*30)
			     pare
			     
			caso (4):
			     escreva("O valor total é R$" , quant*20)
			     pare

			caso contrario: {
				escreva("Opção Invalida")          
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 538; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */