programa
{
	
	funcao inicio()
	{
		inteiro matriz[7][8]

		para(inteiro i = 0; i<7; i++){
			para(inteiro j = 0; j<8;j++){
				matriz[i][j] = i + j
			}
		}

		para(inteiro i = 0; i<7; i++){
			para(inteiro j = 0; j<8;j++){
				escreva("\n\nA soma da posição(coluna) " , i, " e da posição(linha) " , j, " é:  " , matriz[i][j])
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */