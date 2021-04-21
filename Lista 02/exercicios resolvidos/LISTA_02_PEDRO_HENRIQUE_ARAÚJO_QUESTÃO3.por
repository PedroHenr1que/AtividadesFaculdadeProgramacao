programa
{
	
	funcao inicio()
	{
		//variables
		real factoryprice , distributorprofit , tax , finalprice
		

		//program
		escreva("Enter the vehicle's factory price: R$")
		leia (factoryprice)
		limpa()

		escreva("Enter the distributor's profit percentage:")
		leia (distributorprofit)
		limpa()

		escreva("Enter the tax percentage:")
		leia (tax)
		limpa()
		
          //calculations
		distributorprofit = factoryprice * (distributorprofit / 100)
		tax = factoryprice * (tax / 100)
		finalprice = factoryprice + distributorprofit + tax
		
          //out
		escreva("The distribuor profit is R$", distributorprofit)
		escreva("\nThe tax amount is R$", tax)
		escreva("\nThe final price is R$", finalprice)

		
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */