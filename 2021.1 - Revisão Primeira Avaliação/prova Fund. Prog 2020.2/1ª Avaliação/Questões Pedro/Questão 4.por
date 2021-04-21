programa
{
	
	funcao inicio()
	{
		inteiro count = 1 , numero , qnt_mutiplos = 0 , soma = 0
		real media

		escreva("Digite um número para conferir quantos mútiplos de 5 tem entre ele: ")
		leia(numero)

		enquanto(count<=numero){

			se(count%5 == 0){
				qnt_mutiplos++
				soma+= count
			}

			count++
		}

		media = soma/qnt_mutiplos

		limpa()
		escreva("------------RESULTADO------------")
		escreva("\nA qauntidade de mútiplos de 5 dentro de ", numero, " é: " , qnt_mutiplos)
		escreva("\nA media entre eles é: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */