programa
{
	
	funcao inicio()
	{
		inteiro opinion , viewers , count = 0, age
		cadeia movie_name , condition = ""
		real average_opinions, amount_age1 = 0.0, amount_age2 = 0.0, amount_age3 = 0.0 , amount_people_opinion1 = 0.0, amount_people_opinion2 = 0.0, amount_people_opinion3 = 0.0

		escreva("What is the movie name?\n")
		leia(movie_name)
		escreva("\nHow many people watched the movie?\n")
		leia(viewers)
		limpa()
		

		faca{
				
		     escreva("How old are you? ")
			leia(age)
			limpa()

			escreva("What is your opinion about the movie?\n")
			escreva("3 - Great \n2 - Good \n1 - Regular")
			escreva("\nType the number on the side: ")
			leia(opinion)
			limpa()

			se(opinion == 1 ou opinion ==2 ou opinion ==3)
			{

				escolha(opinion){
						caso (1):
						amount_people_opinion1++
						amount_age1 += age
						pare
		
						caso (2):
						amount_people_opinion2++
						amount_age2 += age
						pare
		
						caso (3):
						amount_people_opinion3++
						amount_age3 += age
					
				  }
			    
	                 count++
			}
			senao
			{
				escreva("Error --- Start Over")
				condition = "Error"
				count = viewers
				
			}
			
		}enquanto(count < viewers)

		se(condition != "Error")
		{
			escreva(">>>>>RESULTS FOR THE MOVIE " , movie_name, "<<<<<\n")
	          escreva("TOTAL AMOUNT OF PEOPLE: " , viewers)
	          
			escreva("\n\n---------GREAT---------")
			escreva("\nAmount of people: " , amount_people_opinion3)
			escreva("\nAverage of all ages: " , amount_age3 / amount_people_opinion3)
			escreva("\nThe percentage of people is: " , (amount_people_opinion3 * 100) / viewers )
	
			escreva("\n\n---------GOOD---------")
			escreva("\nAmount of people: " , amount_people_opinion2)
			escreva("\nAverage of all ages: " , amount_age2 / amount_people_opinion2)
			escreva("\nThe percentage of people is: " , (amount_people_opinion2 * 100) / viewers)
	
			escreva("\n\n---------REGULAR---------")
			escreva("\nAmount of people: " , amount_people_opinion1)
			escreva("\nAverage of all ages: " , amount_age1 / amount_people_opinion1)
			escreva("\nThe percentage of people is: " , (amount_people_opinion1 * 100) / viewers)
			
	
			average_opinions = (amount_people_opinion1 + amount_people_opinion2 * 2 + amount_people_opinion3 * 3) / viewers
	
	
			se(average_opinions >= 1 e average_opinions <= 1.5){
				escreva("\n\n---------FINAL EVALUATION---------\n")
				escreva("Regular")
			}
	
			se(average_opinions > 1.5 e average_opinions < 2.5){
				escreva("\n\n---------FINAL EVALUATION---------\n")
				escreva("Good\n\n")
			}
	
			se(average_opinions >= 2.5 e average_opinions <= 3){
				escreva("\n\n---------FINAL EVALUATION---------\n")
				escreva("Great")
			}
		} 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2720; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */