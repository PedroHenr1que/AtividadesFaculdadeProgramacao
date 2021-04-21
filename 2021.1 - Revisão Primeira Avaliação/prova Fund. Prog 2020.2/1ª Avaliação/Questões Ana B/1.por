programa
{
	
	funcao inicio()
	{
		//declaração de variáveis
		caracter bloco
		inteiro numero_apt

		//input
		escreva("/*--- MORADORES DO CONDOMÍNIO ---*/")
		escreva("\n\nBLOCOS: A, B ou C \n")
		escreva("Digite o bloco: ")
		leia(bloco)
		escreva("Digite o número do apartamento: ") 
		leia(numero_apt)
		limpa()

		//desvio condicional/output
		se (bloco == 'A' ou bloco == 'a')
		{
			se (numero_apt == 101){
				escreva("Caio") 
			}senao se(numero_apt == 702){
				escreva("Victor")
			}senao{
				escreva("Não existe esse apartamento!")
			}
		}senao se (bloco == 'B' ou bloco == 'b'){
			se (numero_apt == 204){
				escreva("Letícia") 
			}senao se(numero_apt == 503){
				escreva("Marcela")
			}senao{
				escreva("Não existe esse apartamento!")
			}
		}senao se(bloco == 'C' ou bloco == 'c'){
			se (numero_apt == 301){
				escreva("Arthur") 
			}senao se(numero_apt == 402){
				escreva("Matheus")
			}senao{
				escreva("Não existe esse apartamento!")
			}
		}senao{
			escreva("Esse morador não existe!")
		}
		
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