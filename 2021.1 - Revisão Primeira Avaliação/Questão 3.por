programa
{
	
	funcao inicio()
	{
		inteiro quantidade_funcionarios=0 , count =1
		real salario , salario_total=0.0, maior_salario=0.0, menor_salario=0.0
		

		escreva("Quantos funcionários tem na sua empresa? ")
		leia(quantidade_funcionarios)

		faca{
			escreva("Qual o salário do ", count, " funcionario? R$")
			leia(salario)
			limpa()
			salario_total+=salario

			se(salario>maior_salario){
				maior_salario=salario
			}

			senao se(menor_salario == 0.0){
				menor_salario=salario
			}

			senao se(salario<menor_salario){
				menor_salario=salario
			}

			
			count++
		}enquanto(count<=quantidade_funcionarios)

		escreva("A média salárial da empresa é R$" , salario_total/quantidade_funcionarios)
		escreva("\nO maior salário foi R$", maior_salario, " e o menor salário foi R$", menor_salario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 447; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */