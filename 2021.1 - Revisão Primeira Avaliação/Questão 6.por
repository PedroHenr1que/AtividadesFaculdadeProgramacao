programa
{
	
	funcao inicio()
	{
		inteiro vetor1[5] , vetor2[5], resultado[5]

		para(inteiro i = 0; i<5 ; i++){
			escreva("\nQual o valor do primeiro número que você deseja somar? ")
			leia(vetor1[i])

			escreva("Qual o valor do segundo número que você deseja somar? ")
			leia(vetor2[i])

			resultado[i] = vetor1[i] + vetor2[i]
		}

		limpa()

		para(inteiro i = 0; i<5; i++){
			escreva("\nA soma entre ", vetor1[i], " e ", vetor2[i], " é " , resultado[i])

			i++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */