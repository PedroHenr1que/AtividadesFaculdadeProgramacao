programa
{
	
	funcao inicio()
	{
		caracter sexo
		real altura , altura_homens = 0.0, altura_mulheres = 0.0, maior_altura = 0.0, menor_altura = 0.0
		inteiro quant_homens=0 , quant_mulheres=0, count = 0

		faca{

			escreva("Qual sua altura? ")
			leia(altura)

			escreva("Qual seu sexo? M -> Masculino  F -> Feminino ")
			leia(sexo)

			limpa()

			se(sexo == 'M' ou sexo == 'F'){

				escolha(sexo){
	
					caso ('M'):
						quant_homens++
						altura_homens+=altura
						pare
	
					caso('F'):
						quant_mulheres++
						altura_mulheres+=altura
						pare
				}
	
				se(altura>maior_altura){ maior_altura = altura}
	
				senao se(menor_altura == 0){ menor_altura = altura}
	
				senao se (altura < menor_altura){ menor_altura = altura}
	
				count++
			}

		     senao{
		     	limpa()
		     	escreva("---Error---")
		     	count = 5
		     }
		}enquanto(count<5)

          se(sexo == 'M' ou sexo == 'F'){
          	limpa()

			escreva("A maior altura do grupo é ", maior_altura)
			escreva("\nA menor altura do grupo é ", menor_altura)
	
			escreva("\n\nO números de homens é " , quant_homens)
			escreva("\nO números de mulheres é " , quant_mulheres)
	
			escreva("\n\nA média das alturas das mulheres é " , altura_mulheres/quant_mulheres)
			escreva("\nA média das alturas dos homens é " , altura_homens/quant_homens)
          }
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */