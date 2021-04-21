programa
{
	
	funcao inicio()
	{
		caracter bloco
		inteiro numapt

		escreva ("Blocos A, B e C \nVocê quer informações de qual bloco? ")
		leia(bloco)
		limpa()

		escreva ("Qual número do apartamento? ")
		leia(numapt)
		limpa()

		se (bloco == 'A' ou bloco == 'a'){
			se (numapt == 101) {escreva("O morador é o Caio")}
			senao se (numapt == 702) {escreva("O morador é o Victor")}
		}

		senao se (bloco == 'B' ou bloco == 'b'){
			se (numapt == 204) {escreva("A moradora é a Leticia")}
			senao se (numapt == 503) {escreva("A moradora é a Marcela")}
		}

		senao se (bloco == 'C' ou bloco == 'c'){
			se (numapt == 301) {escreva("A moradora é a Arthur")}
			senao se (numapt == 402) {escreva("A moradora é a Matheus")}
		}

		senao {
			escreva("Opção Invalida")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 167; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */