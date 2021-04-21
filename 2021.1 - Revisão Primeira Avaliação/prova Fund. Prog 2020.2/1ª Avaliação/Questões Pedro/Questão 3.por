programa
{
	
	funcao inicio()
	{
		cadeia nome = " " , nome_maior_seguidores = " "
		inteiro seguidores = 0 , count = 0 , maior_qnt_seguidores = 0

		
 		escreva("------CADASTRO INFLUENCIADORES------")
 		escreva("\n------Digite 'PARE' para sair-------")
		enquanto(nome != "PARE"){
			escreva("\n\nNome do Influenciador? ")
			leia(nome)

			se(nome!="PARE"){

				escreva("Quantidade de seguidores? ")
				leia(seguidores)
	
				se(seguidores>maior_qnt_seguidores){
					nome_maior_seguidores = nome
					maior_qnt_seguidores = seguidores
				}

				count++
			}
		}
		
		limpa()
		escreva("-----------RESULTADOS-----------")
		escreva("\nO nome do influenciador com maior seguidores: " ,  nome_maior_seguidores)
		escreva("\nQuantidade de seguidores: " , maior_qnt_seguidores)
		escreva("\nA quantidade total de influenciadores cadastrados é: " , count)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */