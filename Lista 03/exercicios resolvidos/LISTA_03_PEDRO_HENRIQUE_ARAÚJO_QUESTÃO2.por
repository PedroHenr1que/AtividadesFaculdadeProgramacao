programa
{
	
	funcao inicio()
	{
		real num1 , num2 , num3 , num4 , num5 , result = 0
		

		escreva("Digite o primeiro número: ")
		leia(num1)
		limpa()

		escreva("Digite o segundo número: ")
		leia(num2)
		limpa()

		escreva("Digite o terceiro número: ")
		leia(num3)
		limpa()

		escreva("Digite o quarto número: ")
		leia(num4)
		limpa()

		escreva("Digite o quinto número: ")
		leia(num5)
		limpa()
		

		se((20 <= num1) e (num1 <= 90)){result ++}
		
		se((20 <= num2) e (num2 <= 90)){result ++}
		
		se((20 <= num3) e (num3 <= 90)){result ++}
		
		se((20 <= num4) e (num4 <= 90)){result ++}
		
		se((20 <= num5) e (num5 <= 90)){result ++}

		escreva("A quantidade de números compreendidos entre 20 e 90 é: " , result)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 728; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */