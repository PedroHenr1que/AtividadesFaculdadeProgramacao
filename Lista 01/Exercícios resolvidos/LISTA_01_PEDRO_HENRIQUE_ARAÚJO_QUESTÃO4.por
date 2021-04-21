programa
{
	
	funcao inicio()
	{
	          //variable and constant 	(bar = balance after readjustment ; ab = application_balance ; rd = readjustment)
			const real rj = 0.15
			real ab
			real bar

			//program
			escreva("Enter your application balance: R$")
			leia(ab)

			bar = ab * rj + ab
			escreva("Your balance after de readjustment is R$" , bar)
			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */