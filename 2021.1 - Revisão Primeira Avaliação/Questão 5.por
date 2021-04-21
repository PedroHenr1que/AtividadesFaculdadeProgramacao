programa
{
	
	funcao inicio()
	{
		inteiro acertos =0
		caracter respostas[5]


		para(inteiro i =0; i<5; i++){

			escreva("Qual a resposta da " , i + 1, " questão?")
			escreva("\nAlternativas A B C D \n")
			escreva("Digite aqui sua resposta: ")
			leia(respostas[i])
			limpa()

		     se(respostas[i] == 'A' e i == 0){ acertos++}
			se(respostas[i] == 'B' e i == 1){ acertos++}
			se(respostas[i] == 'A' e i == 2){ acertos++}
			se(respostas[i] == 'D' e i == 3){ acertos++}
			se(respostas[i] == 'C' e i == 4){ acertos++}	
			
		}

		escreva("O numéro de acertos é " , acertos)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */