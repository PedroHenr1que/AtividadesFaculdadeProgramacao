programa
{
	
	funcao inicio()
	{
		real salary
		inteiro codigo
		
		escreva("---Type your code---\n")
		escreva("1 - Secretary\n")
		escreva("2 - Treasurer\n")
		escreva("3 - Teacher\n")
		escreva("4 - Coordinator\n")
		escreva("5 - Principa\n")
		escreva("Code: ")
		leia(codigo)

		escreva("---Enter your salary---\nR$")
          leia(salary)
          limpa()

          escolha(codigo) 
          {
          	caso (1): 
          	     escreva("Your new salary is R$" , salary += salary * 0.45 )
          	     pare

          	caso (2): 
          	     escreva("Your new salary is R$" , salary += salary * 0.35 )
          	     pare     

          	caso (3): 
          	     escreva("Your new salary is R$" , salary += salary * 0.25 )
          	     pare

          	caso (4): 
          	     escreva("Your new salary is R$" , salary += salary * 0.15 )
          	     pare 

          	caso (5): 
          	     escreva("Your salary remains the same")
          	     pare 

          	caso contrario:
          	     escreva("-------\n")
          	     escreva("!ERROR!\n") 
          	     escreva("-------\n")          
          }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 370; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */