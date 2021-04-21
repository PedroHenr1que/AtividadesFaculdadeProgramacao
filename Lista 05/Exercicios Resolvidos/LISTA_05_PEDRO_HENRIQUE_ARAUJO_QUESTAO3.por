programa
{
	
	funcao inicio()
	{                                 //Declaração da constante ANO_ATUAL para resolver o problema da linha 22*
		const inteiro NUM_LIVROS = 10000, ANO_ATUAL = 2021
		inteiro quant_antigos , soma_ano, i , ano , quant_emprestados
		real media_anual
		caracter emprestado

		soma_ano = 0
		quant_antigos = 0
		i = 0
		quant_emprestados = 0

          //Codigo antigo -> (i <= NUM_LIVROS) se o sinal for "<=" contara um livro a mais, pois a contagem da constante 'i' começa em 0
		enquanto(i < NUM_LIVROS) {
			escreva("\nInformen o ano de lançamento do livro: ")
			leia(ano)
			//Codigo antigo -> soma_ano = soma_ano + 1 -> Errado pois ele quer somar todos anos, nesse codigo seria uma variavel contadora ficaria contando 1+1...
			soma_ano += ano

               //A constante ANO_ATUAL não tinha sido declarada*
			se (ano <= ANO_ATUAL - 10){
				//Codigo antigo -> quant_antigos += quant_antigos -> Daria errado pois foi declarada que é igual a zero, então ficaria somando 0 + 0...
				quant_antigos ++
			}

			escreva ("Este livro está emprestado? S - Sim ou N - Não: ")
			leia(emprestado)

			se (emprestado == 'S'){
				//Codigo antigo -> quant_emprestados += 1 -> Daria errado pois foi declarada que é igual a zero, então ficaria somando 0 + 0...
				quant_emprestados ++
			}

			i++
		}

          //Não quebrou a linha(Não é errado não quebrar a linha, porem fica desorganizado)
		escreva("\nQuantidade de livros antigos: ", quant_antigos)
		escreva("\nQuantidade de livros emprestados: ", quant_emprestados)
		media_anual = soma_ano / i
		escreva("\nA média de data de lançamento de livros é :" , media_anual)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */