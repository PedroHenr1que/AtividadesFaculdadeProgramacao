programa
{
	
	funcao inicio()
	{
		const inteiro Senha_correta = 2020
		inteiro  senha = 0 , count=0

		faca{
			escreva("\nDigite a  senha --- 4 Digitos\n")
			leia(senha)

			se(senha!=2020){
				limpa()
				escreva("Senha invalida --- Tente de novo")
			}
			senao{
				limpa()
				escreva("SENHA CORRETA")
			}

			count++
		}enquanto(senha!=2020)

		escreva("\nA quantidade de tentativas foi " , count)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */