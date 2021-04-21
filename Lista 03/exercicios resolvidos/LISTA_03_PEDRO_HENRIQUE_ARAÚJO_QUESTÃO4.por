programa
{
	
	funcao inicio()
	{
		real x , y , z

		escreva("Digite o valor do inicio do intervalo: ")
		leia(x)
		limpa()

		escreva("Digite o valor do final do intervalo: ")
		leia(y)
		limpa()

		se( x > y ){
			escreva("Erro -- O número inicial do intervalo deve ser menor que o número final.") 
		}

		senao{
			
			escreva("Digite o valor que você deseja conferir se está dentro do intervalo: ")
		     leia(z)
		     limpa()

		     se(x <= z e z <= y){
			 escreva("O número ", z ," pertence ao intervalo " , x , " e ", y) 
		}

		     senao{
			 escreva("O número ", z ," não pertence ao intervalo " , x , " e ", y)
		}
		

	    }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 644; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */