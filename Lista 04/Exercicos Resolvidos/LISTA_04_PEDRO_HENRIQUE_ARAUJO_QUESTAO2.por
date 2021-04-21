programa
{
	
	funcao inicio()
	{
		inteiro value , c200 ,c100=0 ,c50=0 ,c20=0, c10=0 , c5=0, c2=0, c1=0, rest

		escreva("Type the value:\nR$")
		leia(value)

		c200 = value / 200
		rest= value % 200

		se(rest>=100){
			c100 = rest / 100
			rest = rest % 100
		}

		se(rest>=50){
			c50 = rest / 50
			rest = rest % 50
		}

		se(rest>=20){
			c20 = rest / 20
			rest = rest % 20
		}

		se(rest>=10){
			c10 = rest / 10
			rest = rest % 10
		}

		se(rest>=5){
			c5 = rest / 5
			rest = rest % 5
		}

		se(rest>=2){
			c2 = rest / 2
			rest = rest % 2
		}

		se(rest>=1){
			c1 = rest / 1
			rest = rest % 1
		}

		escreva(c200 , " banknotes of R$200\n")
		escreva(c100 , " banknotes of R$100\n")
		escreva(c50 , " banknotes of R$50\n")
		escreva(c20 , " banknotes of R$20\n")
		escreva(c10, " banknotes of R$10\n")
		escreva(c5 , " banknotes of R$5\n")
		escreva(c2, " banknotes of R$2\n")
		escreva(c1 , " banknotes of R$1\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */