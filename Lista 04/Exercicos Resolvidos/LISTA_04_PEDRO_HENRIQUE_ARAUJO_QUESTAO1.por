programa
{
	
	funcao inicio()
	{
		real salary , total
		
		escreva("---Enter your salary to know your income tax---\n")
		escreva("R$")
		leia(salary)
		
		
		se (salary <= 1500){ escreva("You don't need to pay income tax")}
		
		senao se (1500<salary e salary<=2500){escreva("You have to pay R$" , total = salary * 0.15)}
		
		senao se(2500<salary e salary<=4000){escreva("You have to pay R$" , total =salary * 0.275)}
		
		senao{escreva("You need to pay R$" , total = salary * 0.35)}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */