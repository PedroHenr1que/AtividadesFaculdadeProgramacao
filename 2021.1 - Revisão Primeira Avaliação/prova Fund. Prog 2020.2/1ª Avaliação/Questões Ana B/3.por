programa
{
	
	funcao inicio()
	{
		//declaração de variáveis
		cadeia nome, nome_mais_seguidores
		inteiro qtd_seguidores, mais_seguidores, i
		nome = " "
		mais_seguidores = 0
		nome_mais_seguidores = " "
		i = 0

		//estrutura de repetição e condicional
		escreva("*---- Cadastro de influenciadores digitais ----*\n")
		escreva("Quando quiser encerrar o programa, digite pare.\n\n")
		enquanto (nome != "pare"){
			escreva("Digite o nome do influenciador digital: ")
			leia(nome)
			
			se (nome != "pare"){
				escreva("Digite a quantidade de seguidores: ")
				leia(qtd_seguidores)
					se (i == 0){
						mais_seguidores = qtd_seguidores
					}senao se (qtd_seguidores > mais_seguidores){
						mais_seguidores = qtd_seguidores
						nome_mais_seguidores = nome
					}
				i = i + 1
			}
		}

		//resultado
		escreva("\n\nO influenciador digital com mais seguidores é ", nome_mais_seguidores, " com ", mais_seguidores , " de seguidores!\n")
		escreva("A quantidade de seguidores cadastrados foi ", i)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */