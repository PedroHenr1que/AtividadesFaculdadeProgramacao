programa
{
	
	funcao inicio()
	{
		//variables    (ab = application balance  ;  prj = percentage of readjustment  ; nb = new balance)
		real ab ,prj , nb
		

		//program
		escreva("Enter your application balance: R$")
		leia(ab)

		escreva("Enter the percentage of readjustment: ")
		leia(prj)
		
		nb = ab * (prj / 100) + ab

		escreva("Your balance was R$", ab) 
		escreva("\nYour new balance is R$", nb)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */