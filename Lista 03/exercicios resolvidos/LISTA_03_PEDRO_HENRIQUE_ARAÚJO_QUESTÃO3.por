programa
{
	
	funcao inicio()
	{
		inteiro R , G , B

		escreva("Digite o valor da cor vermelha: ")
		leia(R)
		limpa()

		escreva("Digite o valor da cor verde: ")
		leia(G)
		limpa()

		escreva("Digite o valor da cor azul: ")
		leia(B)
		limpa()

		se(R == G e G == B e B == 0 ){
			escreva("A cor resultante é preto")
		}
		
		senao se(R == G e G == B e B == 255){
			escreva("A cor resultante é branco")
		}

		senao se((R == G e G == B) e (0 < R e R < 255)){
			escreva("A cor resultante é cinza")
		}

		senao se (R > G e R > B){
			escreva("A cor resultante é a vermelha")
		}
		
		senao se (G > R e G > B){
			escreva("A cor resultante é a verde")
		}

		senao se (B > G e B > R){
			escreva("A cor resultante é a azul")
		}
		
		senao se (R == G e (R > B e G > B)){
			escreva("A cor resultante é a amarelo")
		}

		senao se (R == B e (R > G e B > G)){
			escreva("A cor resultante é a magenta") 
		}

		senao se (G == B e (G > R e B > R)){
			escreva("A cor resultante é a ciano")
		}

		senao {
			escreva("Invalido!!!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 770; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */