programa
{
	
	funcao inicio()
	{      
	       //variaveis
	       cadeia modelo1 , modelo2
	       real   CC1 , CC2 , PFa1 , PFa2 , lucro1 , lucro2 , imposto1 , imposto2 , PFi1 , PFi2 , D
	       logico Cb1 , Cb2


	       //PROGRAMA

	       //carro1
	       escreva("Qual modelo do primeiro carro? ")
	       leia(modelo1)
	       limpa()

	       escreva("Qual o consumo de combustível por km do ", modelo1 , "? ")
	       leia(CC1)
	       limpa()

	       escreva("Qual preço de fábrica do ", modelo1 , "? ")
	       leia(PFa1)
	       limpa()

	       escreva("Qual percentual de lucro do distribuidor para o ", modelo1 , "? ")
	       leia(lucro1)
	       limpa()

	       escreva("Qual percentual de imposto sobre o ", modelo1 , "? ")
	       leia(imposto1)
	       limpa()

            //carro2
	       escreva("Qual modelo do segundo carro? ")
	       leia(modelo2)
	       limpa()

	       escreva("Qual o consumo de combustível por km do ", modelo2 , "? ")
	       leia(CC2)
	       limpa()

	       escreva("Qual preço de fábrica do ", modelo2 , "? ")
	       leia(PFa2)
	       limpa()

	       escreva("Qual percentual de lucro do distribuidor para o ", modelo2 , "? ")
	       leia(lucro2)
	       limpa()

	       escreva("Qual percentual de imposto sobre o ", modelo2 , "? ")
	       leia(imposto2)
	       limpa()


	       //CONTAS CARRO 1
	       lucro1 = PFa1 * (lucro1 / 100)
	       imposto1 = PFa1 * (imposto1 / 100)
	       PFi1 = lucro1 + imposto1 + PFa1
	       Cb1 = CC1 * 30 * 10 < PFi1 ou (CC1 < PFa1) e (CC1 > lucro1 + imposto1)

	        //CONTAS CARRO 2 
	       lucro2 = PFa2 * (lucro2 / 100)
	       imposto2 = PFa2 * (imposto2 / 100)
	       PFi2 = lucro2 + imposto2 + PFa2
	       Cb2 = CC2 * 30 * 10 < PFi2 ou (CC2 < PFa2) e (CC2 > lucro2 + imposto2)

       
	       //SAIDA

	       //Qual mais caro
	       se(PFi1 > PFi2){
	       	escreva("O carro " , modelo1 , " é mais caro que o " , modelo2 , ". \nO preço do " , modelo1 , " fica no valor de R$" , PFi1 , ". O " , modelo2 , " fica no valor de R$" , PFi2)
	       }
	       senao se(PFi2 > PFi1){
	       	escreva("O carro " , modelo2 , " é mais caro que o " , modelo1 , ". \nO preço do " , modelo2 , " fica no valor de R$" , PFi2 , ". O " , modelo1 , " fica no valor de R$" , PFi1) 
	       }

	       //Qual carro tem menor imposto
	       se(imposto1 < imposto2){
	       	escreva("\nO carro que tem o menor imposto é o " , modelo1 , ".")
	       }
	       senao se(imposto2 < imposto1){
	       	escreva("\nO carro que tem o menor imposto é o " , modelo2 , ".")
	       }

	       //Qual carro tem o melhor custo beneficio
	       se((Cb1 e Cb2) == verdadeiro){
	       	escreva("\nOs dois carros tem um bom custo benefício")
	       }
	       senao se(Cb1 == verdadeiro){
	       	escreva("\nO carro " , modelo1 , " tem o melhor custo benefício.")
	       }
	       senao se(Cb2 == verdadeiro){
	       	escreva("\nO carro " , modelo2 , " tem o melhor custo benefício.")
	       }
	       

	       
	       
	       
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2636; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */