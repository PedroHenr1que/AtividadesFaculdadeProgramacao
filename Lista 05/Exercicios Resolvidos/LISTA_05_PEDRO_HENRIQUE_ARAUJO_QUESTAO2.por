programa
{
	
	funcao inicio()
	{
		inteiro  lowest_age = 0 , amount_students = 0 , age = 0 , highest_age = 0
		real average_age , average_grades , highest_grade = 0.0, lowest_grade = 0.0 , grade , total_of_all_grades = 0.0 , total_of_all_ages = 0.0
          cadeia name , name_highest_grade = " " , name_lowest_grade = " "

          faca{
          	escreva("\n\n---Type -> -1 <- in 'age' to exit---\n")
          	escreva("Type your age: ")
          	leia(age)

          	se(age!= -1){

	               escreva("\nEnter your name: ")
	          	leia(name)
	
	          	escreva("\nType your grade: ")
	          	leia(grade)
	
	          	total_of_all_grades += grade
	               total_of_all_ages += age
	
	               se(grade>highest_grade){
	          		highest_grade = grade
	          		name_highest_grade = name
	          	}
	
	          	senao se(lowest_grade==0){
	          		lowest_grade = grade
	          		name_lowest_grade = name
	          	}
	
	          	senao se(grade<lowest_grade){
	          		lowest_grade = grade
	          		name_lowest_grade = name
	          	}
	
	          	se(age>highest_age){
	          		highest_age = age
	          	}
	
	          	senao se(lowest_age == 0){
	          		lowest_age = age
	          	}
	
	          	senao se(age<lowest_age){
	          		lowest_age = age
	          	}
	
	          	
	               amount_students ++
          	}
          }enquanto(age!= -1)
         
          average_age = total_of_all_ages / amount_students
          average_grades = total_of_all_grades / amount_students

          escreva("\n------------RESULTS------------\n")
          escreva("The amount of students is: " , amount_students , "\n")
          escreva("The youngest is: " , lowest_age , "\n") 
          escreva("The oldest is: " , highest_age , "\n") 
          escreva("The average between the oldest and youngest is: " , (highest_age + lowest_age) / 2 , "\n")
          escreva("The average of all ages is: " , average_age , "\n\n") 
          escreva("The highest grade is: " , highest_grade , " from ", name_highest_grade, "\n")
          escreva("The lowest grade is: " , lowest_grade , " from ", name_lowest_grade, "\n")
          escreva("The average between the highest and lowest grade is: " , (highest_grade + lowest_grade) / 2 , "\n")
          escreva("The average of all grades is: " , average_grades , "\n\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */